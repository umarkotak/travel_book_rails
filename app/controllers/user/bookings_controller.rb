class User::BookingsController < ApiController
  def create
    verify_account
    service = Bookings::Create.new(@user, params)
    service.call
    render_response(data: service.result)
  end

  def my_list
    verify_account
    service = Bookings::MyList.new(@user, params)
    service.call
    render_response(data: service.result)
  end

  def my_detail
    verify_account
    service = Bookings::MyDetail.new(@user, params)
    service.call
    render_response(data: service.result)
  end

  def user_summary
    verify_account
    service = Bookings::UserSummary.new(@user, params)
    service.call
    render_response(data: service.result)
  end
end
