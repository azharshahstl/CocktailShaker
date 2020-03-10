class Style < ApplicationRecord
    has_many :cocktails 

    scope :alphabetize, -> {order(:pallette)}
end
