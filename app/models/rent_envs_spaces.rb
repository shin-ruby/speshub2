# == Schema Information
#
# Table name: rent_envs_spaces
#
#  id          :integer          not null, primary key
#  rent_env_id :integer
#  space_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class RentEnvsSpaces < ActiveRecord::Base
end
