class CocktailsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :check_if_can_edit, only: [:edit, :update]

    def new 
        @cocktail = Cocktail.new 
        @cocktail.build_garnish
        6.times do 
            m = @cocktail.measurements.build
            m.build_alcohol
        end
    end

    def index
        if params[:mixologist_id] && @mixologist = Mixologist.find_by_id(params[:mixologist_id])
            @cocktails = @mixologist.cocktails
        else 
            @cocktails = Cocktail.alphabetize
                
            @cocktails = @cocktails.search(params[:query].downcase) if params[:query] && !params[:query].empty? 
            @cocktails = @cocktails.filters(params[:cocktail][:style_id]) if params[:cocktail] && !params[:cocktail][:style_id].empty?
        end
    end

    def show 
        @cocktail = Cocktail.find_by_id(params[:id])
    end

    def create
        @cocktail = current_mixologist.cocktails.build(cocktails_params)
         if @cocktail.save 
            redirect_to cocktail_path(@cocktail)    
         else
            flash[:message] = "Looks like you forgot to give your cocktail a name or pick a style, glassware or garnish.  Let's try it again, shall we?"
            redirect_to new_mixologist_cocktail_path(current_mixologist)
        end
    end

    def edit      
    end

    def random
        @cocktails = Cocktail.all
        @cocktail =  @cocktails.sample
        
        render :show
    end 

    def update
        @cocktail.update(cocktails_params)
        if @cocktail.save
            redirect_to cocktail_path 
        else  
            render :edit
        end
    end

    def destroy
        @cocktail = Cocktail.find_by_id(params[:id])
        @cocktail.destroy
        
        redirect_to cocktails_path
    end

    private 

    def cocktails_params
        params.require(:cocktail).permit(:name, :instructions, :mixologist_id, :style_id, :glassware_id, :garnish_id, :etoh_name, garnish_attributes:[:kind], measurements_attributes:[:size, :unit, :alcohol_id, alcohol_attributes:[:etoh_name]])
    end

end