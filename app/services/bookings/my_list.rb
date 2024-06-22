module Bookings
  class MyList < BaseService
    def initialize(user, params)
      @user = user
      @params = params.permit!
    end

    def call
      validates
      execute_logic
    end

    private

    def validates
    end

    def execute_logic
      bookings = Booking.where({
        user_id: @user.id
      }).order("id DESC")

      final_bookings = []

      bookings.each do |booking|
        sample_booking_detail = BookingDetail.where({
          booking_id: booking.id
        }).first

        camping_packet = CampingPacket.where(id: sample_booking_detail.item_id).first

        tmp_booking = booking.attributes
        tmp_booking[:product_thumbnail] = camping_packet.main_thumbnail
        tmp_booking[:product_name] = camping_packet.name

        final_bookings.push(tmp_booking)
      end

      @result = final_bookings
    end
  end
end
