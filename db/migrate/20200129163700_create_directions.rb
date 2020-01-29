class CreateDirections < ActiveRecord::Migration[6.0]
  def change
    create_table :directions do |t|
      t.text :instructions
      t.integer :cocktai_id

      t.timestamps
    end
  end
end
