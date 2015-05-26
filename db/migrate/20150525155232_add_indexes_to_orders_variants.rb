class AddIndexesToOrdersVariants < ActiveRecord::Migration
  def change
    add_index :orders_variants, :order_id
    add_index :orders_variants, :variant_id
  end
end
