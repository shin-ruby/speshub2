# == Schema Information
#
# Table name: rent_envs
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RentEnv < ActiveRecord::Base

  has_and_belongs_to_many :spaces
end
