class ApplicationController < ActionController::Base

helper_method :current_mixologist, :logged_in?, :check_if_can_edit

    private 

    def current_mixologist
        @current_mixologist ||= Mixologist.find_by_id(session[:mixologist_id]) if session[:mixologist_id]
    end

    def logged_in?
        !!session[:mixologist_id]
    end

    def redirect_if_not_logged_in
        redirect_to root_path if !logged_in?
    end

    def check_if_can_edit
        @cocktail = Cocktail.find_by_id(params[:id])
        redirect_to cocktails_path if current_mixologist.id != @cocktail.mixologist_id  
    end

end
