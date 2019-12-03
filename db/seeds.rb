# frozen_string_literal: true
QUANTITY_BOOK = 50
QUANTITY_AUTHORS = 20
QUANTITY_AUTHORS_BOOK = 20
BOOK_DIMENSIONS_RANGE = (1.0..10.0).freeze
CATEGORIES = ['Mobile development', 'Photo', 'Web design', 'Web development'].freeze
MATERIALS = ['glossy paper', 'hardcover', 'soft paper', 'cardboard'].freeze

AuthorsBook.destroy_all
Book.destroy_all
Author.destroy_all
Category.destroy_all

Category.create([{ title: 'Mobile development' }, { title: 'Photo' }, { title: 'Web design' }, { title: 'Web development' }])
# Material.create([{ title: 'glossy paper'}, {title: 'hardcover'}, {title: 'soft paper'}, {title: 'cardboard'}])

QUANTITY_AUTHORS.times do
  Author.create(first_name: FFaker::Name.first_name,
                last_name: FFaker::Name.last_name)
end

QUANTITY_BOOK.times do
  Book.create! do |book|
    book.title        = FFaker::Book.unique.title
    book.description  = FFaker::Book.description
    book.price        = rand(1.0..150.00)
    book.quantity     = rand(1..10)
    book.dimensions   = "h: #{rand(BOOK_DIMENSIONS_RANGE).round(1)} w: #{rand(BOOK_DIMENSIONS_RANGE).round(1)} d: #{rand(BOOK_DIMENSIONS_RANGE).round(1)}"
    book.year         = rand(1876..2020)
    # book.materials    = MATERIALS.sample(rand(1..3)).join(', ')
    # book.materials    = MATERIALS.order('RANDOM()').first
    book.category     = Category.order('RANDOM()').first
    book.authors      = Author.all.sample(rand(1..3))
  end
end

Book.find_each do |book|
  AuthorsBook.create(author: Author.order('RANDOM()').first, book: book)
end

# Book.all.each do |book|
#   rand(0..3).times do
#     book.images.attach(
#         io: File.open(Rails.root.join("app/assets/images/#{rand(1..22)}.jpg")),
#         filename: "book_no_cover.jpg",
#         content_type: "image/jpg"
#     )
#   end
# end

puts 'Downloaded'

# QUANTITY_AUTHORS_BOOK.times do
#   AuthorsBook.create! do |ab|
#     ab.book_id = rand(1...15)
#     ab.author_id = rand(1...4)
#   end
# end
