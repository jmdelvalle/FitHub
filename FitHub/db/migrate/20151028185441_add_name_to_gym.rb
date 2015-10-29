class AddNameToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :name, :string
  end
end
