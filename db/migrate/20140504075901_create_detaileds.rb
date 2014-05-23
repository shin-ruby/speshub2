class CreateDetaileds < ActiveRecord::Migration
  def change
    create_table :detaileds do |t|
      t.string :content
      t.string :sort

      t.timestamps
    end
  end
end
