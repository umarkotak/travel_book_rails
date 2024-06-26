module Bookings
  class Create < BaseService
    def initialize(user, params)
      @user = user
      @params = params.permit(
        :date_start_wib, :date_end_wib, :packets => {}, :rent_equipments => {},
      )
    end

    def call
      validates
      execute_logic
    end

    private

    def validates
    end

    def execute_logic
      start_date = params[:date_start_wib].to_datetime.change(:offset => "+0700")
      end_date = params[:date_end_wib].to_datetime.change(:offset => "+0700")
      end_date = end_date - 1.day
      if end_date <= start_date
        end_date = start_date
      end
      num_nights = (end_date - start_date).to_i + 1

      camping_packet_slugs = params[:packets].to_h.map{ |k, v| k }
      camping_item_slugs = params[:rent_equipments].to_h.map{ |k, v| k }

      camping_packets = CampingPacket.where(slug: camping_packet_slugs)
      camping_items = CampingItem.where(slug: camping_item_slugs)

      week_count = count_weekdays_of_week(start_date, end_date)

      total_price = 0

      booking_details = []

      camping_packets.each do |camping_packet|
        booking_detail = BookingDetail.new(
          {
            user_id: @user.id,
            item_type: "camping_packet",
            item_id: camping_packet.id,
            weekday_price: camping_packet.weekday_price,
            weekday_quantity: week_count["weekday"].to_i,
            weekend_price: camping_packet.weekend_price,
            weekend_quantity: week_count["weekend"].to_i,
            quantity: params[:packets][camping_packet.slug].to_i,
            total_price: ((camping_packet.weekday_price * week_count["weekday"].to_f) + (camping_packet.weekend_price * week_count["weekend"].to_f)) * params[:packets][camping_packet.slug].to_i,
          }
        )

        total_price += booking_detail.total_price
        booking_details.push(booking_detail)
      end

      camping_items.each do |camping_item|
        booking_detail = BookingDetail.new(
          # {
          #   user_id: @user.id,
          #   item_type: "camping_item",
          #   item_id: camping_item.id,
          #   weekday_price: camping_item.price,
          #   weekday_quantity: week_count["weekday"].to_i,
          #   weekend_price: camping_item.price,
          #   weekend_quantity: week_count["weekend"].to_i,
          #   quantity: params[:rent_equipments][camping_item.slug].to_i,
          #   total_price: ((camping_item.price * week_count["weekday"].to_f) + (camping_item.price * week_count["weekend"].to_f)) * params[:rent_equipments][camping_item.slug].to_i,
          # },
          {
            user_id: @user.id,
            item_type: "camping_item",
            item_id: camping_item.id,
            weekday_price: 0,
            weekday_quantity: 0,
            weekend_price: camping_item.price,
            weekend_quantity: week_count["weekend"].to_i + week_count["weekday"].to_i,
            quantity: params[:rent_equipments][camping_item.slug].to_i,
            total_price: params[:rent_equipments][camping_item.slug].to_i * camping_item.price,
          },
        )

        total_price += booking_detail.total_price
        booking_details.push(booking_detail)
      end

      ActiveRecord::Base.transaction do
        booking = Booking.create!({
          user_id: @user.id,
          number: SecureRandom.uuid,
          payment_number: "",
          total_price: total_price,
          discount_price: 0,
          mdr_cut: 0,
          grand_total_price: total_price,
          status: "initialized",
          payment_status: "",
          payment_metada: {},
          started_at: start_date,
          ended_at: end_date + 1.day,
          num_nights: num_nights,
          metadata: {},
        })

        booking_details.each do |booking_detail|
          booking_detail.booking_id = booking.id
          booking_detail.save!
        end
      end

      @result = {}
    end

    def count_days_of_week(start_date, end_date)
      day_counts = Hash.new(0) # Initialize with default value 0

      if start_date <= end_date
        return { start_date.strftime('%A').downcase => 1 }
      end

      (start_date..end_date).each do |date|
        day_name = date.strftime('%A').downcase
        day_counts[day_name] += 1
      end

      day_counts
    end

    def count_weekdays_of_week(start_date, end_date)
      day_counts = Hash.new(0) # Initialize with default value 0

      if end_date <= start_date
        day_name = start_date.strftime('%A').downcase
        week_name = ["saturday", "sunday"].include?(day_name) ? "weekend" : "weekday"
        return { week_name => 1 }
      end

      (start_date..end_date).each do |date|
        day_name = date.strftime('%A').downcase
        week_name = ["saturday", "sunday"].include?(day_name) ? "weekend" : "weekday"
        day_counts[week_name] += 1
      end

      day_counts
    end
  end
end
