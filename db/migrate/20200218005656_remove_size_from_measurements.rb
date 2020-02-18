class RemoveSizeFromMeasurements < ActiveRecord::Migration[6.0]
  def change

    remove_column :measurements, :size, :string
  end
end
