class Garnish < ApplicationRecord
    has_many :cocktails
   
    
    scope :alphabetize, -> {order(:kind)}
    
    # def garnish_attributes=(garnish_params)
    #     binding.pry
    #     if !garnish_params['kind'].empty?
    #         binding.pry
    #     self.garnish = Garnish.find_or_create_by(garnish_params) 
    #     end
    # end
end
