# frozen_string_literal: true

class Material < ApplicationRecord
  has_many :books_materials, dependent: :destroy
  has_many :books, through: :books_materials
end
