class GymsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :gym
end
