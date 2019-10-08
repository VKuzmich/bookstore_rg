class Book < ApplicationRecord
  MIN_PRICE = 1
  MAX_PRICE = 150

  MIN_QUANTITY = 0
  MAX_QUANTITY = 10


  belongs_to :category

  has_many :authors_books, dependent: :destroy
  has_many :authors, through: :authors_books

  has_many :books_materials, dependent: :destroy
  has_many :materials, through: :books_materials

  validates :title, :description, :year, :quantity, presence: true
  validates :category_id, presence: true
  validates :price, presence: true,
            numericality: { greater_than_or_equal_to: MIN_PRICE, less_than_or_equal_to: MAX_PRICE }
  validates :quantity, numericality: { only_integer: true,
                                       greater_than_or_equal_to: MIN_QUANTITY,
                                       less_than_or_equal_to: MAX_QUANTITY }

  scope :latest_books, -> { includes(:authors).first(3) }
  scope :best_sellers, -> { includes(:authors).first(4) }
end
