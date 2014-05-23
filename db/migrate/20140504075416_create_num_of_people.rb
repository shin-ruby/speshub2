class CreateNumOfPeople < ActiveRecord::Migration
  def change
    create_table :num_of_people do |t|
      t.string :content

      t.timestamps
    end
  end
end
