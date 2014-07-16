class CreateSpaceSettings < ActiveRecord::Migration
  def change
    create_table :space_settings do |t|
      t.string :content

      t.timestamps
    end
  end
end
