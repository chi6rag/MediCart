class Address < ActiveRecord::Base
  belongs_to :user
  validates :line1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true, numericality: { only_integer: true }, length: { minimum: 6, maximum: 6 }
  validates :user_id, presence: true, numericality: { only_integer: true }
end
