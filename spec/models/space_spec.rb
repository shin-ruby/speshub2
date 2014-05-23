# == Schema Information
#
# Table name: spaces
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  content          :text
#  price_hour       :decimal(, )
#  price_day        :decimal(, )
#  price_month      :decimal(, )
#  price_year       :decimal(, )
#  space_setting_id :integer
#  user_group_id    :integer
#  city_id          :integer
#  atmosphere_id    :integer
#  created_at       :datetime
#  updated_at       :datetime
#  num_of_people_id :integer
#  address          :string(255)
#  user_id          :integer
#

require 'spec_helper'

describe Space do
  pending "add some examples to (or delete) #{__FILE__}"
end
