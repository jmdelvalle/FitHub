class Gym < ActiveRecord::Base
  validates_uniqueness_of :address
  has_many :users_gyms
  has_many :users, through: :users_gyms
end
