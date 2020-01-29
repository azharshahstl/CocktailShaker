class CreateGlassWares < ActiveRecord::Migration[6.0]
  def change
    create_table :glass_wares do |t|
      t.boolean :style
      t.integer :cocktail_id

      t.timestamps
    end
  end
end
