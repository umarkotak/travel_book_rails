class Admin::BookingsController < ApiController
  def admin_list
    verify_account
    service = Bookings::AdminList.new(@user, params)
    service.call
    render_response(data: service.result)
  end
end
