class DropTableDirections < ActiveRecord::Migration[6.0]
  def change
    drop_table :directions
  end
end
