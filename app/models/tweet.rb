class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :text, presence: true
end