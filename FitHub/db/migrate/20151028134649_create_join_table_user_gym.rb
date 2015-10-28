class CreateJoinTableUserGym < ActiveRecord::Migration
  def change
    create_join_table :users, :gyms do |t|
      t.index [:user_id, :gym_id]
      t.index [:gym_id, :user_id]
    end
  end
end
