class MixologistsController < ApplicationController 

def new
    @mixologist = Mixologist.new 
end 

def create 
    @mixologist = Mixologist.new(mix_params)
    if @mixologist.save
        session[:mixologist_id] = @mixologist.id 
        redirect_to @mixologist
        else 
        render :new
    end
end 

def show
    redirect_if_not_logged_in
    @mixologist = Mixologist.find_by_id(params[:id]) 
    redirect_to 'root' if !@mixologist
end 

private 

def mix_params 
    params.require(:mixologist).permit(:email, :password, :password_confirmation, :prof_bartender, :fav_liquors, :ADMIN)
end

end 