class AddAttachmentPhotoToSpaces < ActiveRecord::Migration
  def self.up
    change_table :spaces do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :spaces, :photo
  end
end
