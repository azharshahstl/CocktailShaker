class CocktailsController < ApplicationController
before_action :redirect_if_not_logged_in

    def new 
        @cocktail = Cocktail.new 
        @cocktail.build_garnish
        2.times(@cocktail.alcohols.build)
    end

    def create 
        binding.pry
    end

    private 

    def (cocktails_params)
        params.require(:cocktail).permit(:name, :alcohol_ids:[], :direction, :mixologist_id, :style_id, :glassware_id, :garnish_id, :garnish_attributes: [:kind], :alcohols_attributes: [:etoh_name])

end