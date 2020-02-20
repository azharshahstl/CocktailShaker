class Cocktail < ApplicationRecord
    belongs_to :mixologist 
    belongs_to :style
    belongs_to :glassware
    belongs_to :garnish
    has_many :alcohols, through: :measurements
    has_many :measurements 
    has_many :mixologists, through: :comments
    accepts_nested_attributes_for :garnish, reject_if: proc { |attributes| attributes['kind'].blank?}
    

    def measurements_attributes=(attributes)
        if !measurement_params["size"].empty? && !measurement_params["unit"].empty? && (!measurement_params["alcohol_attributes"]["etoh_name"].empty? || measurement_params["alcohol_id"])
            attributes.values.each do |measurement_params|
            self.measurements << Measurement.create(measurement_params)
            end
        end

    end


end
