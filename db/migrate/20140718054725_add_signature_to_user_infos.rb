class AddSignatureToUserInfos < ActiveRecord::Migration
  def change
    add_column :user_infos, :signature, :text
    add_column :user_infos, :introduce, :text
  end
end
