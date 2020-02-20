class RemoveDirectionFromCocktails < ActiveRecord::Migration[6.0]
  def change

    remove_column :cocktails, :direction, :string
  end
end
