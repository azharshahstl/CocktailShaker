class AddUnitToMeasurements < ActiveRecord::Migration[6.0]
  def change
    add_column :measurements, :unit, :string
  end
end
