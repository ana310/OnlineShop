class Variant < ActiveRecord::Base
  belongs_to :product
  has_many :orders_has_variants
  has_many :variants, :through => :orders_has_variants
  has_many :buyers, :through => :orders
end
