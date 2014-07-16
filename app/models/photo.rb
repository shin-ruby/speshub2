# == Schema Information
#
# Table name: photos
#
#  id                :integer          not null, primary key
#  created_at        :datetime
#  updated_at        :datetime
#  data_file_name    :string(255)
#  data_content_type :string(255)
#  data_file_size    :integer
#  data_updated_at   :datetime
#  space_id          :integer
#  space_token       :string(255)
#

class Photo < ActiveRecord::Base

  belongs_to :space

  has_attached_file :data, :styles => { :medium => "900x600>", :thumb => "300x200>" }
  validates_attachment_content_type :data, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :data, :less_than => 2.megabytes


  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
        "id"  => self.id,
        "name" => self.data_file_name,
        "size" => self.data_file_size,
        "url" => self.data.url(:medium),
        "delete_url" => photo_path(self),
        "delete_type" => "DELETE"
    }
  end
end
