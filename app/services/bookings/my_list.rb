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
        tmp_booking = booking.attributes
        final_bookings.push(tmp_booking)
      end

      @result = final_bookings
    end
  end
end
