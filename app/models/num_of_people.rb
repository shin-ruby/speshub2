# == Schema Information
#
# Table name: num_of_people
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class NumOfPeople < ActiveRecord::Base

  has_many :spaces, dependent: :destroy
end
