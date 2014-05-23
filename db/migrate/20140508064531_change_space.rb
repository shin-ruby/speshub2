class ChangeSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :rent_env_id, :string
  end
end
