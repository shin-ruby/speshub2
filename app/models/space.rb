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

class Space < ActiveRecord::Base
  default_scope -> { order('created_at DESC') }

  has_many :comments, dependent: :destroy

  has_many :photos, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :photos

  has_and_belongs_to_many :detaileds
  has_and_belongs_to_many :rent_envs
  has_and_belongs_to_many :user_groups

  belongs_to :space_setting
  belongs_to :num_of_people
  belongs_to :city
  belongs_to :atmosphere
  belongs_to :detailed
  belongs_to :user

  has_many :messages, dependent: :destroy


  validates :title, :address, :content, presence: true
  validates :content, length: { minimum: 20 }
  validates :title, :uniqueness => true
  validates :space_setting_id, presence: true

  validates :price_month, :price_year, :numericality => { :greater_than_or_equal_to => 0.01}
  validates :price_hour, :price_day, :price_month, :price_year, presence: true

  #will_paginate
  self.per_page = 32

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64
      break random_token if Space.find_by(token: random_token).nil?
    end
  end

end
