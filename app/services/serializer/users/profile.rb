module Serializer
  module Users
    class Profile
      def initialize(user)
        @user = user
      end

      def call
        @user.attributes.except("id", "session", "password")
      end
    end
  end
end
