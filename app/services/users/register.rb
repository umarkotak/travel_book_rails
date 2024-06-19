module Users
  class Register < BaseService
    def initialize(params)
      @params = params.permit(
        :name, :email, :phone, :password, :password_confirmation
      )
    end

    def call
      validates
      execute_logic
      @result = result_data
    end

    private

    def validates
      validate_password_confirmation
    end

    def validate_password_confirmation
      if params[:password] != params[:password_confirmation]
        raise "400 || password and password confirmation missmatch"
      end
    end

    def execute_logic
      User.create!(
        guid: SecureRandom.uuid,
        name: @params[:name],
        email: @params[:email],
        phone: @params[:phone],
        password: @params[:password],
        role: "user"
      )
    end

    def result_data
      { email: @params[:email] }
    end
  end
end
