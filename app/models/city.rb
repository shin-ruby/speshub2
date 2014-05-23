# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base

  has_many :spaces, dependent: :destroy
end
