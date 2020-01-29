class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.boolean :alcohol
      t.boolean :glassware
      t.boolean :garnish
      t.text :direction
      t.integer :mixologist_id
      t.integer :style_id

      t.timestamps
    end
  end
end
