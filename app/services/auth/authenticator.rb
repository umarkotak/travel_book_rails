module Auth
  class Authenticator < BaseService
    def initialize(session)
      @session = session
    end

    def call
      user = User.find_by(session: @session)
      return @result = user if user.present?
      raise "401 || Unauthorized"
    end
  end
end
