class CreateGarnish < ActiveRecord::Migration[6.0]
  def change
    create_table :garnishes do |t|
      t.string :kind
      t.integer :cocktail_id
    end
  end
end