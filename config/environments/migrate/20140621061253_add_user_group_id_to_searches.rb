class AddUserGroupIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :user_group_id, :integer
  end
end
