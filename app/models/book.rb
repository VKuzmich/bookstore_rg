class Book < ApplicationRecord
  belongs_to :categories

  has_many :authors_books, dependent: :destroy
  has_many :authors, through: :authors_books

  validates :title, :description, :price, :year, :quantity, presence: true

  validates :price, numericality: { greater_or_equal_to: 0, less_than_or_equal_to: 100_000 }
  validates :quantity, numericality: { only_integer: true, greater_or_equal_to: 0 }
end
