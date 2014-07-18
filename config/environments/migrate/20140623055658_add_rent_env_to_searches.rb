class AddRentEnvToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :rent_env_id, :integer
  end
end
