class CocktailsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @cocktail = Cocktail.new 
        @cocktail.build_garnish
        2.times do 
            m = @cocktail.measurements.build
            m.build_alcohol
        end
    end

    def create 
        @cocktail = Cocktail.new(cocktails_params)
            if @cocktail.save 
                redirect_to cocktail_path(@cocktail)    
            else
                2.times do 
                    m = @cocktail.measurements.build
                    m.build_alcohol
                end 
                render :new
            end
    end

    private 

    def cocktails_params
        params.require(:cocktail).permit(:name, :instructions, :mixologist_id, :style_id, :glassware_id, :garnish_id, garnish_attributes: [:kind], measurements_attributes: [:size, :unit, :alcohol_id, alcohol_attributes: [:etoh_name]])
    end

end