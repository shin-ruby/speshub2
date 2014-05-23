class ChangeRentEnv < ActiveRecord::Migration
  def change
    change_column :spaces, :rent_env_id, :string
  end
end
