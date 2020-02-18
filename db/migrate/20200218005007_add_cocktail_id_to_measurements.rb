class AddCocktailIdToMeasurements < ActiveRecord::Migration[6.0]
  def change
    add_column :measurements, :cocktail_id, :integer
  end
end
