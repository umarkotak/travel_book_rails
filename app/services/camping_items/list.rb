module CampingItems
  class List < BaseService
    def initialize(params)
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
      camping_items = CampingItem.all.order("id ASC")

      final_camping_items = []

      camping_items.each do |camping_item|
        tmp_camping_item = camping_item.attributes
        tmp_camping_item[:remaining_stock] = camping_item.daily_stock
        final_camping_items.push(tmp_camping_item)
      end

      @result = final_camping_items
    end
  end
end
