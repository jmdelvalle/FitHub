class CreateWeekdays < ActiveRecord::Migration
  def change
    create_table :weekdays do |t|
      t.string :name
    end
  end
end
