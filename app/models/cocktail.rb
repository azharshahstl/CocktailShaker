class Cocktail < ApplicationRecord
    belongs_to :mixologist 
    belongs_to :style
    belongs_to :glassware
    belongs_to :garnish
    has_many :alcohols
    has_many :measurements 
    has_many :mixologists, through: :comments
end
