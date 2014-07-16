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

class Search < ActiveRecord::Base
  def spaces
    @spaces ||= find_spaces
  end

  private
  def find_spaces
    spaces = Space.order(:updated_at)
    spaces = spaces.where("title like ?", "%#{title}%") if title.present?
    spaces = spaces.where(city_id: city_id) if city_id.present?
    spaces = spaces.where(space_setting_id: space_setting_id) if space_setting_id.present?

    spaces = spaces.find(SpacesUserGroups.where(user_group_id: user_group_id).map { |i| i.space_id} ) if user_group_id.present?
    spaces = spaces.find(RentEnvsSpaces.where(rent_env_id: rent_env_id).map { |i| i.space_id} ) if rent_env_id.present?

    spaces = spaces.where(atmosphere_id: atmosphere_id) if atmosphere_id.present?
    spaces = spaces.where("price_month >= ?", min_price) if min_price.present?
    spaces = spaces.where("price_month <= ?", max_price) if max_price.present?
    spaces
  end


end
