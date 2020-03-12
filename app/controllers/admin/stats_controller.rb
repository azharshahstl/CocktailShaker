class Admin::StatsController < ApplicationController 

    def index
        if current_mixologist.admin == true
            @mixologists = Mixologist.all 
            render 'admin/stats/index'
        else
            redirect_to root_path
        end
    end
end