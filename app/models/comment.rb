# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  commenter  :text
#  space_id   :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :space
  belongs_to :user
end
