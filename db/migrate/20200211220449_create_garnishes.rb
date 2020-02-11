class CreateGarnishes < ActiveRecord::Migration[6.0]
  def change
    create_table :garnishes do |t|
      t.string :kind
    end
  end
end
