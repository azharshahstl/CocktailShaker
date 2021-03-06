class MixologistsController < ApplicationController 
#before_action :redirect_if_not_logged_in
def new
    @mixologist = Mixologist.new 
end 

def create 
    @mixologist = Mixologist.new(mix_params)
    if @mixologist.save
        session[:mixologist_id] = @mixologist.id 
        redirect_to mixologist_path(@mixologist)
    else  
        render :new
        
    end
end 

def show
    @mixologist = Mixologist.find_by_id(params[:id])
    redirect_to root_path  if !@mixologist 
end 

private 

def mix_params 
    params.require(:mixologist).permit(:email, :password, :password_confirmation, :prof_bartender, :fav_liquors, :reason_to_shake, :admin)
end

end 