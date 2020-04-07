# frozen_string_literal: true

class Author < ApplicationRecord
  NAMES_LENGTH = 60

  has_many :authors_books, dependent: :destroy
  has_many :books, through: :authors_books
  validates :first_name, :last_name, presence: true, length: { maximum: NAMES_LENGTH }
end
