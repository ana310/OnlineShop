class AddOrderIdToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :order_id, :integer
  end
end
