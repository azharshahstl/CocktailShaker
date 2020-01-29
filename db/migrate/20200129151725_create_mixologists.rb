class CreateMixologists < ActiveRecord::Migration[6.0]
  def change
    create_table :mixologists do |t|
      t.string :email
      t.string :password_digest
      t.boolean :prof_bartender

      t.timestamps
    end
  end
end
