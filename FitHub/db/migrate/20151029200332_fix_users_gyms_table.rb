class FixUsersGymsTable < ActiveRecord::Migration
    def change
      drop_table :users_gyms
      create_table :users, :gyms do |t|
        t.index [:user_id, :gym_id]
        t.index [:gym_id, :user_id]
      end
    end
end
