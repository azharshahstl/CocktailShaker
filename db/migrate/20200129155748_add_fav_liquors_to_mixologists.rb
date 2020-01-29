class AddFavLiquorsToMixologists < ActiveRecord::Migration[6.0]
  def change
    add_column :mixologists, :fav_liquors, :string
  end
end
