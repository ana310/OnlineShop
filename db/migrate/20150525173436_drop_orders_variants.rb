class DropOrdersVariants < ActiveRecord::Migration
  def change
    drop_table :orders_variants
  end
end
