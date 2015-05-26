class AddVariantIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :variant_id, :integer
  end
end
