class RemoveAdminFromMixologists < ActiveRecord::Migration[6.0]
  def change

    remove_column :mixologists, :admin, :boolean
  end
end
