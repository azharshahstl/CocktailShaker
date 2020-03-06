class CocktailsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @cocktail = Cocktail.new 
        @cocktail.build_garnish
        6.times do 
            m = @cocktail.measurements.build
            m.build_alcohol
        end
    end

    def index
        @cocktails = Cocktail.alphabetize
            
        @cocktails = @cocktails.search(params[:query].downcase) if params[:query] && !params[:query].empty? 
        @cocktails = @cocktails.filters(params[:cocktail][:style_id]) if params[:cocktail] && !params[:cocktail][:style_id].empty?
    end

    def show 
        @cocktail = Cocktail.find_by_id(params[:id])
    end

    def create
        @cocktail = current_mixologist.cocktails.build(cocktails_params)
            if @cocktail.save 
                redirect_to cocktail_path(@cocktail)    
            else
                redirect_to new_cocktail_path
            end
    end

    def edit 
        @cocktail = Cocktail.find_by_id(params[:id])
            if current_mixologist[:id] == @cocktail.mixologist_id 
                redirect_to edit_cocktail_path(@cocktail)      
            else 
                redirect_to root_path
            end     
    end

    private 

    def cocktails_params
        params.require(:cocktail).permit(:name, :instructions, :mixologist_id, :style_id, :glassware_id, :garnish_id, :etoh_name, garnish_attributes:[:kind], measurements_attributes:[:size, :unit, :alcohol_id, alcohol_attributes:[:etoh_name]])
    end

end