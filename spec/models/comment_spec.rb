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

require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
