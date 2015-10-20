class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.integer :c_bodyweight
      t.integer :c_bench
      t.integer :c_squat
      t.integer :c_deadlift
      t.integer :t_bodyweight
      t.integer :t_bench
      t.integer :t_squat
      t.integer :t_deadlift

      t.timestamps null: false
    end
  end
end
