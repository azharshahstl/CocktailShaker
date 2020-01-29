class RemoveGlassWareFromCocktails < ActiveRecord::Migration[6.0]
  def change

    remove_column :cocktails, :glassware, :boolean
  end
end
