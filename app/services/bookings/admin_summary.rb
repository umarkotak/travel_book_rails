module Bookings
  class AdminSummary < BaseService
    ORDERED_STATUSES = ["initialized","accepted","completed","rejected"]

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
      booking_summaries = ActiveRecord::Base.connection.execute("
        SELECT
          status,
          COUNT(status) AS booking_count
        FROM bookings
        GROUP BY status
        ORDER BY ARRAY_POSITION(ARRAY['initialized','accepted','completed','rejected'], status)
      ")

      @result = booking_summaries.map do |one_booking|
        {
          status: one_booking["status"],
          human_status: Const::STATUS_TO_HUMAN_STATUS[one_booking["status"]],
          booking_count: one_booking["booking_count"],
        }
      end
    end
  end
end
