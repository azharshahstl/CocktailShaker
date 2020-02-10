class CocktailsController < ApplicaitonController
before_action :redirect_if_not_logged_in

def new 
    @cocktail = Cocktail.new 
end


end