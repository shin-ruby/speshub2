# == Schema Information
#
# Table name: atmospheres
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Atmosphere < ActiveRecord::Base

  has_many :spaces, dependent: :destroy
end
