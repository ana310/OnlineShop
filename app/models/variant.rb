class Variant < ActiveRecord::Base
  belongs_to :product
  has_many :buyers, :through => :orders
end
