class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :mixologists, :prof_bartentder, :prof_bartender
  end
end
