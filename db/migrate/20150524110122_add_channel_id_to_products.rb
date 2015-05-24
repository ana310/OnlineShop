class AddChannelIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :channel_id, :integer
  end
end
