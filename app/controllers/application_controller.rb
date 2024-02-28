class ApplicationController < ActionController::Base
    helper_method :current_user

    private
  
    def current_user
      # Implement your logic to fetch the current user using session, token, etc.
      # For example:
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
