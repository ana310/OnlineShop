class Order < ActiveRecord::Base
  has_many :orders_has_variants
  has_many :variants, :through => :orders_has_variants
  belongs_to :buyer
end
