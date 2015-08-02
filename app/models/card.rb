class Card < ActiveRecord::Base
  belongs_to :user

  has_many :tags
  has_many :card_sides
end
