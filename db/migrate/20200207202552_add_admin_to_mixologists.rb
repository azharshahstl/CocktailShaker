class AddAdminToMixologists < ActiveRecord::Migration[6.0]
  def change
    add_column :mixologists, :ADMIN, :boolean
  end
end
