class CreateDetailedsSpaces < ActiveRecord::Migration
  def change
    create_table :detaileds_spaces do |t|
      t.integer :detailed_id
      t.integer :space_id

      t.timestamps
    end
  end
end
