class CreateSpacesUserGroups < ActiveRecord::Migration
  def change
    create_table :spaces_user_groups do |t|
      t.integer :user_group_id
      t.integer :space_id

      t.timestamps
    end
  end
end
