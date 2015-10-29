class CreateTableUsersGyms < ActiveRecord::Migration
  def change
    create_table :users_gyms do |t|
      t.belongs_to :user
      t.belongs_to :gym
    end
  end
end
