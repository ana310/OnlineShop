class OrdersHasVariant < ActiveRecord::Base
  belongs_to :order
  belongs_to :variant
end
