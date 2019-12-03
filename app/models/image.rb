class Image < ApplicationRecord
  belongs_to :book

  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
