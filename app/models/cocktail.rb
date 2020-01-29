class Cocktail < ApplicationRecord
    belongs_to :mixologist 
    belongs_to :style
    has_many :alcohols 
    has_many :mixologists, through: :comments
end
