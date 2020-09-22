class RemoveProfBartenderFromMixologists < ActiveRecord::Migration[6.0]
  def change

    remove_column :mixologists, :prof_bartender, :boolean
  end
end
