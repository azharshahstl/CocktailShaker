class RemoveAlcoholFromCocktails < ActiveRecord::Migration[6.0]
  def change

    remove_column :cocktails, :alcohol, :string
  end
end
