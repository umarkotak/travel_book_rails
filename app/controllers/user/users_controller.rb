class User::UsersController < ApiController
  def register
    service = Users::Register.new(params)
    service.call
    render_response(data: service.result)
  end

  def login
    service = Users::Login.new(params)
    service.call
    render_response(data: service.result)
  end

  def profile
    verify_account
    result = Serializer::Users::Profile.new(@user).call
    render_response(data: result)
  end
end
