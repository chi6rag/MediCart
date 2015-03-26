class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  validates_presence_of :product_id, :order_id
end
