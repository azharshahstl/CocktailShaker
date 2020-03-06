class Garnish < ApplicationRecord
    has_many :cocktails
    #validates :kind, uniqueness: true, presence: true
    
    def garnish_attributes=(garnish_params)
        if !garnish_params['kind'].empty? 
        self.garnish = Garnish.find_or_create_by(garnish_params) 
        end
    end
end
