module CampingPackets
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
      camping_packets = CampingPacket.all.order("id ASC")

      final_camping_packets = []

      camping_packets.each do |camping_packet|
        tmp_camping_packet = camping_packet.attributes
        tmp_camping_packet[:remaining_slot] = camping_packet.daily_stock
        final_camping_packets.push(tmp_camping_packet)
      end

      @result = final_camping_packets
    end
  end
end
