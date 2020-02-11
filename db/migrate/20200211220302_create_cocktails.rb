class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :alcohol
      t.string :direction
      t.integer :mixologist_id
      t.integer :style_id
      t.integer :glassware_id
      t.integer :garnish_id
    end
  end
end
