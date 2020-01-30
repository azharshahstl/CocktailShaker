class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.string :size
      t.integer :cocktail_id
    end
  end
end
