class RemovePasswordFromMixologists < ActiveRecord::Migration[6.0]
  def change

    remove_column :mixologists, :password, :string
  end
end
