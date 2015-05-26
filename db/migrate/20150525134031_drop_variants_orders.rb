class DropVariantsOrders < ActiveRecord::Migration
  def change
    drop_table :variants_orders
  end
end
