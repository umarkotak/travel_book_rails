class User::BookingsController < ApiController
  def create
    verify_account
    service = Bookings::Create.new(@user, params)
    service.call
    render_response(data: service.result)
  end
end
