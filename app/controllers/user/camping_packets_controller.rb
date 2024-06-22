class User::CampingPacketsController < ApiController
  def packet_list
    service = CampingPackets::List.new(params)
    service.call
    render_response(data: service.result)
  end

  def equipment_list
    service = CampingItems::List.new(params)
    service.call
    render_response(data: service.result)
  end
end
