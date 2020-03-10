class Glassware < ApplicationRecord
    has_many :cocktails

    scope :alphabetize, -> {order(:style)}
end
