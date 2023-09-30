class Item < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_one_attached :image

  validates :name, presence: true, allow_blank: false

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
