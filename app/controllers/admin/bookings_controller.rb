class Admin::BookingsController < ApiController
  def admin_list
    verify_account
    service = Bookings::AdminList.new(@user, params)
    service.call
    render_response(data: service.result)
  end

  def admin_detail
    verify_account
    service = Bookings::AdminDetail.new(@user, params)
    service.call
    render_response(data: service.result)
  end

  def admin_action
    verify_account
    service = Bookings::AdminAction.new(@user, params)
    service.call
    render_response(data: service.result)
  end

  def admin_summary
    verify_account
    service = Bookings::AdminSummary.new(@user, params)
    service.call
    render_response(data: service.result)
  end
end
