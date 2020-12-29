class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :strength
      t.integer :rxnum
      t.integer :refills
      t.integer :quantity
      t.string :instruction
      t.timestamps
    end
  end
end
