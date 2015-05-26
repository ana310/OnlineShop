class CreateVariantsOrders < ActiveRecord::Migration
  def change
    create_table :variants_orders do |t|
      t.integer :variant_id
      t.integer :order_id
    end
  end
end
