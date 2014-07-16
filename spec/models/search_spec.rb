# == Schema Information
#
# Table name: searches
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  city_id          :integer
#  min_price        :decimal(, )
#  max_price        :decimal(, )
#  created_at       :datetime
#  updated_at       :datetime
#  space_setting_id :integer
#  atmosphere_id    :integer
#  user_group_id    :integer
#  rent_env_id      :integer
#

require 'spec_helper'

describe Search do
  pending "add some examples to (or delete) #{__FILE__}"
end
