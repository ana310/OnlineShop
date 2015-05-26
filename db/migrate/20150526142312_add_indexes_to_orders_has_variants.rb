class AddIndexesToOrdersHasVariants < ActiveRecord::Migration
  def change
    add_index :orders_has_variants, :order_id
    add_index :orders_has_variants, :variant_id
    add_index :orders_has_variants, [:order_id, :variant_id], unique: true
  end
end
