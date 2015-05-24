class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
