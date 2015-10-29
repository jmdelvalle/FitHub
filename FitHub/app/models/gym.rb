class Gym < ActiveRecord::Base
  validates_uniqueness_of :address
  has_many :gyms_users
  has_many :users, through: :gyms_users
end
