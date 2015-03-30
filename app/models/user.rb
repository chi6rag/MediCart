# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
	has_many :orders
	has_many :addresses
	def self.find_or_create_by_auth(auth_data)
		user = find_or_initialize_by(provider: auth_data["provider"], uid: auth_data["uid"])
		user.name = auth_data["info"]["name"]
		user.save
		user
	end
end
