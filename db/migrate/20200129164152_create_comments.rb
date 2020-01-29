class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :cocktail_id
      t.integer :mixologist_id

      t.timestamps
    end
  end
end
