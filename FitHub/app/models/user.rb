class User < ActiveRecord::Base
  has_many :gyms
  has_many :workouts
end
