class Comment < ApplicationRecord
    belongs_to :mixologist
    belongs_to :cocktail
end
