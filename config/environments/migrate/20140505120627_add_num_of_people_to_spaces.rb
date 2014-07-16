class AddNumOfPeopleToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :num_of_people_id, :integer
  end
end
