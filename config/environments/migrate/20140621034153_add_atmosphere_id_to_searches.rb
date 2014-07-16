class AddAtmosphereIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :atmosphere_id, :integer
  end
end
