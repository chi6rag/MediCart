class Product < ActiveRecord::Base
	has_many :order_items
	mount_uploader :image_url, ImageUploader
	validates_numericality_of :price
	validates :stock, :numericality => { :greater_than_or_equal_to => 0 }
end
