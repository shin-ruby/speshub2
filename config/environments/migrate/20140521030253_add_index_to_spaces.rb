class AddIndexToSpaces < ActiveRecord::Migration
  def change
    add_index :spaces, :space_setting_id
    add_index :spaces, :city_id
    add_index :spaces, :user_group_id
    add_index :spaces, :atmosphere_id
  end
end
