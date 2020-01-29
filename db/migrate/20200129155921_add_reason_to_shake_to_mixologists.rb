class AddReasonToShakeToMixologists < ActiveRecord::Migration[6.0]
  def change
    add_column :mixologists, :reason_to_shake, :string
  end
end
