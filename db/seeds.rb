# frozen_string_literal: true

BOOK_DIMENSIONS_RANGE = (1.0..10.0).freeze
MATERIALS = ['glossy paper', 'hardcover', 'soft paper', 'cardboard'].freeze

AuthorsBook.destroy_all
Book.destroy_all
Author.destroy_all
Category.destroy_all

Category.create([{ title: 'Mobile development' }, { title: 'Photo' }, { title: 'Web design' }, { title: 'Web development' }])

15.times do
  Author.create(first_name: FFaker::Name.first_name,
                last_name: FFaker::Name.last_name)
end

25.times do
  Book.create(title: FFaker::Book.title,
              description: FFaker::Book.description,
              price: rand(1.0..150.00),
              quantity: rand(1..10),
              dimensions: "h: #{rand(BOOK_DIMENSIONS_RANGE).round(1)} w: #{rand(BOOK_DIMENSIONS_RANGE).round(1)} d: #{rand(BOOK_DIMENSIONS_RANGE).round(1)}",
              year: rand(1800..2020),
              materials: MATERIALS.sample(rand(1..3)).join(', '),
              category: Category.order('RANDOM()').first,
              authors: Author.all.sample(rand(1..3)))
end

Book.find_each do |book|
  AuthorsBook.create(author: Author.order('RANDOM()').first, book: book)
end
