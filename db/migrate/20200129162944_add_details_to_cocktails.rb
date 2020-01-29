class AddDetailsToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :alcohol, :string
    add_column :cocktails, :glassware, :string
    add_column :cocktails, :garnish, :string
  end
end
