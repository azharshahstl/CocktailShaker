class Measurement < ApplicationRecord
    belongs_to :cocktail
    belongs_to :alcohol

    def alcohol_attributes=(alcohol_params)
        if !alcohol_params['etoh_name'].empty? 
        self.alcohol = Alcohol.find_or_create_by(alcohol_params) 
        end
    end
end
