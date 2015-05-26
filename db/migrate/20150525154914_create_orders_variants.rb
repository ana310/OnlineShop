class CreateOrdersVariants < ActiveRecord::Migration
  def change
    create_table :orders_variants, id: false do |t|
      t.integer :order_id
      t.integer :variant_id
    end
  end
end
