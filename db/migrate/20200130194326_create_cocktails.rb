class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :alcohol
      t.string :glassware
      t.string :garnish
      t.string :direction
      t.integer :mixologist_id
      t.integer :style_id
    end
  end
end
