class AddAttachmentAvatarToUserInfos < ActiveRecord::Migration
  def self.up
    change_table :user_infos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :user_infos, :avatar
  end
end
