class SessionsController < ApplicationController 
    
    

    def create
        #binding.pry
        if auth && !auth[:info][:email].empty?
            @mixologist = Mixologist.find_by(email: auth[:info][:email])
            session[:mixologist_id] = @mixologist.id 
            redirect_to mixologist_path(@mixologist) 
        else
        @mixologist = Mixologist.find_by(email: params[:mixologist][:email])
            if @mixologist && @mixologist.authenticate(params[:mixologist][:password])
                session[:mixologist_id] = @mixologist.id 
                redirect_to mixologist_path(@mixologist) 
            else
                flash[:message] = "Login information was entered incorrectly"
                redirect_to login_path
            end
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private 

    def auth
        request.env['omniauth.auth']
      end
end