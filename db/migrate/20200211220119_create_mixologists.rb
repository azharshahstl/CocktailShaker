class CreateMixologists < ActiveRecord::Migration[6.0]
  def change
    create_table :mixologists do |t|
      t.string :email
      t.string :password
      t.boolean :prof_bartender
      t.boolean :admin
      t.string :fav_liquors
      t.string :reason_to_shake
    end
  end
end
