class Measurement < ApplicationRecord
    belongs_to :cocktail
    belongs_to :alcohol
end
