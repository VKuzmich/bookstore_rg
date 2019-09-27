LIMIT = 25
BOOK_DIMENSIONS_RANGE = (1.0..10.0).freeze
MATERIALS = ['glossy paper', 'hardcover', 'soft paper', 'cardboard'].freeze
CATEGORIES = ['Mobile development', 'Photo', 'Web design', 'Web development'].freeze

Book.destroy_all
Author.destroy_all
Category.destroy_all

CATEGORIES.each do |category|
  Category.create!(name: category)
end


LIMIT.times do
  Author.create! do |author|
    author.first_name = FFaker::Name.first_name
    author.last_name = FFaker::Name.last_name
  end

  Book.create! do |book|
    book.title = FFaker::Book.title
    book.description = FFaker::Book.description
    book.price = rand(1.0..150.00)
    book.quantity = rand(1..10)
    book.dimensions = "h: #{rand(BOOK_DIMENSIONS_RANGE).round(1)} w: #{rand(BOOK_DIMENSIONS_RANGE).round(1)} d: #{rand(BOOK_DIMENSIONS_RANGE).round(1)}"
    book.year = rand(1800..2020)
    book.materials    = MATERIALS.sample(rand(1..3)).join(', ')
    book.categories   = Category.all.sample(rand(1..2))
    book.authors = Author.all.sample(rand(1..3))
  end
end
