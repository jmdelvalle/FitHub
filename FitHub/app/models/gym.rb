class Gym < ActiveRecord::Base
  has_many :gyms_users
  has_many :users, through: :gyms_users
end
