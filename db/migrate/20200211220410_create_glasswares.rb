class CreateGlasswares < ActiveRecord::Migration[6.0]
  def change
    create_table :glasswares do |t|
      t.string :style
    end
  end
end
