class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items, dependent: :destroy

  def total
  	total = 0
  	order_items.each do |item|
  		total += item.subtotal
  	end
  	total
  end
end
