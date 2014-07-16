class RemoveDetailedChooseToSpaces < ActiveRecord::Migration
  def change
    remove_column :spaces, :detailed_choose
  end
end
