class Tweet < ApplicationRecord
  validates_presence_of :description
  validates_length_of :description, maximum: 140
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

end
