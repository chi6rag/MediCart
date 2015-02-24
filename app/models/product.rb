class Product < ActiveRecord::Base
	mount_uploader :image_url, ImageUploader
	validates_numericality_of :price
end
