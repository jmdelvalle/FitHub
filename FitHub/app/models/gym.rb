class Gym < ActiveRecord::Base
  validates_uniqueness_of :address
  has_many :users_gyms
  has_many :users, through: :users_gyms

  def joined_gyms(user)
    UsersGym.where(:user_id => user.id, :gym_id => self.id).first
  end
end
