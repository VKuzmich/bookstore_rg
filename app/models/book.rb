class Book < ApplicationRecord
  belongs_to :category

  has_many :authors_books, dependent: :destroy
  has_many :authors, through: :authors_books

  validates :title, :category,  presence: true

  validates :price, numericality: { greater_or_equal_to: 0, less_than_or_equal_to: 100_000 }
  validates :quantity, numericality: { only_integer: true, greater_or_equal_to: 0 }

  scope :latest_books, -> { includes(:authors).first(3) }
  scope :best_sellers, -> { includes(:authors).first(4) }
end
