class AddVariantIdToOrdersHasVariant < ActiveRecord::Migration
  def change
    add_column :orders_has_variants, :variant_id, :integer
  end
end
