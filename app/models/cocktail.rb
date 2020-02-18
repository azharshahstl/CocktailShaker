class Cocktail < ApplicationRecord
    belongs_to :mixologist 
    belongs_to :style
    belongs_to :glassware
    belongs_to :garnish
    has_many :alcohols
    has_many :measurements 
    has_many :mixologists, through: :comments
    accepts_nested_attributes_for :garnish, reject_if: proc { |attributes| attributes['kind'].blank?}
    

    def alcohols_attributes=(attributes)
        attributes.values.each do |value| 
           self.alcohols << Alcohol.find_or_create_by(v) if !v['etoh_name'].empty?
        end


end
