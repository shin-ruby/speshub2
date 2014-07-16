# == Schema Information
#
# Table name: user_groups
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class UserGroup < ActiveRecord::Base

  has_and_belongs_to_many :spaces
end
