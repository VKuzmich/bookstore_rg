# frozen_string_literal: true

FactoryBot.define do
  factory :authors_book do
    author
    book
  end
end
