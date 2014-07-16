class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :phone
      t.string :mobile
      t.belongs_to :user

      t.timestamps
    end
  end
end
