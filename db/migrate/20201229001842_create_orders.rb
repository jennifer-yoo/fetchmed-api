class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :supply_id, optional: true
      t.integer :medication_id, optional: true

      t.timestamps
    end
  end
end
