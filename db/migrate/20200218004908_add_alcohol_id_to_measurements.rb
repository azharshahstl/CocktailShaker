class AddAlcoholIdToMeasurements < ActiveRecord::Migration[6.0]
  def change
    add_column :measurements, :alcohol_id, :integer
  end
end
