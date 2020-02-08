class SessionsController < ApplicationController 

    def home 
    end

    def new 
    end

    def create 
        @mixologist = Mixologist.find_by(email: params[:mixologist][:email])
        if @mixologist && @mixologist.authenticate(params[:mixologist][:password])
            session[:mixologist_id] = @mixologist.id 
            redirect_to mixologist_path(@mixologist) 
        else
            flash[:message] = "Login information was entered incorrectly"
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
end