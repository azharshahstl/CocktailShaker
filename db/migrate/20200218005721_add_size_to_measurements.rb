class AddSizeToMeasurements < ActiveRecord::Migration[6.0]
  def change
    add_column :measurements, :size, :integer
  end
end
