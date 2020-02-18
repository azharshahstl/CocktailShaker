class AddPasswordDigestToMixologists < ActiveRecord::Migration[6.0]
  def change
    add_column :mixologists, :password_digest, :string
  end
end
