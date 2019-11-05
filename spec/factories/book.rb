# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { FFaker::Book.title }
    description { FFaker::Book.description }
    price { rand(1.0..150.0).round(2) }
    category
    quantity { rand(1..10) }
    year { rand(1800..2020) }
  end
end
