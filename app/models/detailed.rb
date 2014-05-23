# == Schema Information
#
# Table name: detaileds
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  sort       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Detailed < ActiveRecord::Base

  has_and_belongs_to_many :spaces

end
