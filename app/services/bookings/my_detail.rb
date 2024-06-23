module Bookings
  class MyDetail < BaseService
    def initialize(user, params)
      @user = user
      @params = params.permit(:booking_number).permit!
    end

    def call
      validates
      execute_logic
    end

    private

    def validates
    end

    def execute_logic
      booking = Booking.find_by({
        number: params[:booking_number]
      })

      final_booking = booking.attributes

      boking_details = BookingDetail.where({
        booking_id: booking.id
      })

      final_booking_details = []

      boking_details.each do |booking_detail|
        tmp_booking_detail = booking_detail.attributes

        if booking_detail.item_type == "camping_packet"
          camping_packet = CampingPacket.find(booking_detail.item_id)
          tmp_booking_detail[:name] = camping_packet.name
          tmp_booking_detail[:image] = camping_packet.main_thumbnail

        elsif booking_detail.item_type == "camping_item"
          camping_item = CampingItem.find(booking_detail.item_id)
          tmp_booking_detail[:name] = camping_item.name
          tmp_booking_detail[:image] = camping_item.image

        else
          raise "422 || invalid booking detail item type"
        end

        final_booking_details.push(tmp_booking_detail)
      end

      final_booking[:booking_details] = final_booking_details
      final_booking[:human_status] = Const::STATUS_TO_HUMAN_STATUS[booking.status]

      @result = final_booking
    end
  end
end
