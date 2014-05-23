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
#

class Photo < ActiveRecord::Base

  belongs_to :space

  has_attached_file :data, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :data, :content_type => /\Aimage\/.*\Z/

end
