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

class Space < ActiveRecord::Base

  default_scope -> { order('created_at DESC') }

  has_many :comments, dependent: :destroy
  has_many :user, through: :comments

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

  has_and_belongs_to_many :detaileds
  has_and_belongs_to_many :rent_envs

  belongs_to :space_setting
  belongs_to :user_group
  belongs_to :num_of_people
  belongs_to :city
  belongs_to :atmosphere
  belongs_to :detailed
  belongs_to :user


  validates :content, presence: true, length: { maximum: 1000 }

end
