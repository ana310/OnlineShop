class CreateOrdersHasVariants < ActiveRecord::Migration
  def change
    create_table :orders_has_variants do |t|

      t.timestamps null: false
    end
  end
end
