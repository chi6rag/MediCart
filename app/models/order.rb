# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  has_many :order_items, dependent: :destroy

  def total
  	total = 0
  	order_items.each do |item|
  		total += item.subtotal
  	end
  	total
  end
end
