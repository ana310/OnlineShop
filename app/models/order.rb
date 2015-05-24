class Order < ActiveRecord::Base
  has_many :variants
  belongs_to :buyer

end
