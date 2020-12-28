class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.integer :rxnum
      t.string :equipment
      t.integer :refill
      t.string :brand

      t.timestamps
    end
  end
end
