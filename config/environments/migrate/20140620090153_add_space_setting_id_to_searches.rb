class AddSpaceSettingIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :space_setting_id, :integer
  end
end
