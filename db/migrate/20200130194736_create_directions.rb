class CreateDirections < ActiveRecord::Migration[6.0]
  def change
    create_table :directions do |t|
      t.string :instructions
      t.integer :cocktail_id
    end
  end
end
