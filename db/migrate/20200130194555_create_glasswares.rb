class CreateGlasswares < ActiveRecord::Migration[6.0]
  def change
    create_table :glasswares do |t|
      t.string :style
      t.integer :cocktail_id
    end
  end
end
