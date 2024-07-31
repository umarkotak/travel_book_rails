module Bookings
  class UserSummary < BaseService
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
    end

    def execute_logic
      sql_command = <<-SQL
        SELECT
          status,
          COUNT(status) AS booking_count
        FROM bookings
        WHERE
          user_id = :user_id
        GROUP BY status
        ORDER BY ARRAY_POSITION(ARRAY['initialized','accepted','completed','rejected'], status)
      SQL

      booking_summaries = ActiveRecord::Base.connection.execute(ApplicationRecord.sanitize_sql([
        sql_command,
        {
          user_id: @user.id,
        }
      ]))

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
