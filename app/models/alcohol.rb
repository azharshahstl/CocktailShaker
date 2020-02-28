class Alcohol < ApplicationRecord
    has_many :mixologists, through: :cocktails
    has_many :cocktails, through: :measurements
    has_many :measurements
    has_many :cocktails
    
end
