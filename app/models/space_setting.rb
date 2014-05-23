# == Schema Information
#
# Table name: space_settings
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class SpaceSetting < ActiveRecord::Base

  has_many :spaces, dependent: :destroy
end
