# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  product_id :integer
#  quantity   :integer          default("0")
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  validates_presence_of :product_id, :order_id
  validates :quantity, :numericality => { :greater_than => 0 }

  def subtotal
  	product.price * quantity
  end
end
