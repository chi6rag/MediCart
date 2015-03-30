# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  price       :decimal(8, 2)
#  description :text
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stock       :integer          default("0")
#

class Product < ActiveRecord::Base
	has_many :order_items
	mount_uploader :image_url, ImageUploader
	validates_numericality_of :price
	validates :stock, :numericality => { :greater_than_or_equal_to => 0 }
end
