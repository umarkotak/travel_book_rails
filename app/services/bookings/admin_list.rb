module Bookings
  class AdminList < BaseService
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
      if @user.role != "admin"
        raise "403 || sorry, you don't have sufficient permission"
      end
    end

    def execute_logic
      bookings = Booking.all.order("id DESC")

      final_bookings = []

      bookings.each do |booking|
        tmp_booking = booking.attributes

        tmp_booking[:human_status] = Const::STATUS_TO_HUMAN_STATUS[booking.status]
        tmp_booking[:user_name] = booking.user.name

        final_bookings.push(tmp_booking)
      end

      @result = final_bookings
    end
  end
end
