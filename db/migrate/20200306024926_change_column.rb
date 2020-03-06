class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :measurements, :size, :float
  end
end
