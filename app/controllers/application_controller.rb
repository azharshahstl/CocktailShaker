class ApplicationController < ActionController::Base

helper_method :current_user, :logged_in?

    private 

    def current_user
        @current_user ||= Mixologist.find_by(:mixologist_id) if session(:user_id)
    end

    def logged_in?
        !!session[:user_id]
    end

    def redirect_if_not_loged_in
        redirect_to root_path if !logged_in?
    end

end
