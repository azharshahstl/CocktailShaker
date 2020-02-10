class FixAdmin < ActiveRecord::Migration[6.0]
  def change
    rename_column :mixologists, :ADMIN, :admin
  end
end
