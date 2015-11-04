class User < ActiveRecord::Base
  has_many :users_gyms
  has_many :gyms, through: :users_gyms
  has_many :users_workouts
  has_many :workouts, through: :users_workouts
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  # has_many :likes
  # has_many :workouts, :through => :likes
  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
    create(
      provider: auth['provider'],
      uid: auth['uid'],
      name: auth['info']['name'],
      # image: auth['info']['image']
    )
  end

  def is_friend?(friend_id)
    friendships.collect {|friendship| friendship.friend_id}.include?(friend_id)
  end
end
