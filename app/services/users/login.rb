module Users
  class Login < BaseService
    def initialize(params)
      @params = params.permit(
        :email, :password
      )
    end

    def call
      validates
      execute_logic
      @result = result_data
    end

    private

    def validates
      return if params[:email].present? && params[:password].present?
      raise "400 || email or password is missing"
    end

    def execute_logic
      @user = User.find_by(email: params[:email], password: params[:password])
      raise "400 || invalid email or password" unless @user.present?

      if @user.session.present?
        @user.session
      else
        @user.update!(session: "Bearer #{SecureRandom.uuid}-#{SecureRandom.uuid}-#{SecureRandom.uuid}")
      end
    end

    def result_data
      {
        name: @user.name,
        email: @user.email,
        role: @user.role,
        session: @user.session,
      }
    end
  end
end
