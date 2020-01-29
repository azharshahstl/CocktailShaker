class Alcohol < ApplicationRecord
    has_many :mixologists, through: :cocktails
    
end
