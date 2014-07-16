class RemoveUserGroupIdToSpaces < ActiveRecord::Migration
  def change
    remove_column :spaces, :user_group_id
  end
end
