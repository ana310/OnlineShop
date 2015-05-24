class Product < ActiveRecord::Base
  belongs_to :channel
  has_many :variants
  has_many :comments
end
