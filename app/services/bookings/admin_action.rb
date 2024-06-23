module Bookings
  class AdminAction < BaseService
    def initialize(user, params)
      @user = user
      @params = params.permit(:booking_number, :status).permit!
    end

    def call
      validates
      execute_logic
    end

    private

    def validates
      if @user.role != "admin"
        raise "403 || sorry, you don't have sufficient permission"
      end
    end

    def execute_logic
      booking = Booking.find_by({
        number: params[:booking_number]
      })

      if booking.status == "initialized"
        unless ["rejected", "accepted"].include?(params[:status])
          raise "400 || invalid action, only accept: [rejected, accepted]"
        end
      end

      booking.update!({
        status: params[:status]
      })

      @result = {
        number: booking.number
      }
    end
  end
end
