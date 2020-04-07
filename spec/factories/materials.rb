# frozen_string_literal: true

FactoryBot.define do
  factory :material do
    sequence(:title) { |n| "#{FFaker::Lorem.word}#{n}" }
  end
end