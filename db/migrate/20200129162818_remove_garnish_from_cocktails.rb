class RemoveGarnishFromCocktails < ActiveRecord::Migration[6.0]
  def change

    remove_column :cocktails, :garnish, :boolean
  end
end
