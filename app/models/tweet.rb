class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, if: :image_not_attached?

  def image_not_attached?
    !self.image.attached?
  end
end