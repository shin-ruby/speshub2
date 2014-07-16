# == Schema Information
#
# Table name: spaces
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  content          :text
#  price_hour       :decimal(8, 2)
#  price_day        :decimal(8, 2)
#  price_month      :decimal(8, 2)
#  price_year       :decimal(8, 2)
#  space_setting_id :integer
#  city_id          :integer
#  atmosphere_id    :integer
#  created_at       :datetime
#  updated_at       :datetime
#  num_of_people_id :integer
#  address          :string(255)
#  user_id          :integer
#  token            :string(255)
#

require 'spec_helper'

describe Space do
  pending "add some examples to (or delete) #{__FILE__}"
end
