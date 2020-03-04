class Cocktail < ApplicationRecord
    belongs_to :mixologist 
    belongs_to :style
    belongs_to :glassware
    belongs_to :garnish
    has_many :alcohols, through: :measurements
    has_many :measurements 
    accepts_nested_attributes_for :garnish, reject_if: proc { |attributes| attributes['kind'].blank?}
    
    validates :name, presence: true

    def self.search(params)
        where("LOWER(name) LIKE ?", "#{params}%")
    end

    def measurements_attributes=(attributes)
        attributes.values.each do |measurement_params|
            if !measurement_params["size"].empty? && !measurement_params["unit"].empty? && (!measurement_params["alcohol_attributes"]["etoh_name"].blank? || measurement_params["alcohol_id"])
                self.measurements << Measurement.create(measurement_params)   
            end
        end
    end

    def display_with_creator
        "#{self.name} - #{self.mixologist.email.split("@").first}"
    end


end
