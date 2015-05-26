class AddOrderIdToOrdersHasVariant < ActiveRecord::Migration
  def change
    add_column :orders_has_variants, :order_id, :integer
  end
end
