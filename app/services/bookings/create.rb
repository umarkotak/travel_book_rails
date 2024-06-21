module Bookings
  class Create < BaseService
    def initialize(params)
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
      # TODO: Calculate num days

      @result = {}
    end
  end
end
