class AddUserIdToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :user_id, :integer

    add_index :spaces, [:user_id, :created_at]
  end
end
