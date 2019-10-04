class BooksController < ApplicationController
  def index
    @latest_books = Book.latest_books
    @best_sellers = Book.best_sellers
    @category = Category.all
  end

  def show
    @books = Book.find_by(id: params[:id])
  end
end
