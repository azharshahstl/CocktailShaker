class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :cocktail_id
      t.integer :mixologist_id
    end
  end
end
