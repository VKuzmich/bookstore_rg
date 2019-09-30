class BooksController < ApplicationController
  def index
    @categories = Category.all

    @books = Book.first(5)
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  # private
  #
  # def book_params
  #   params.require(:book).permit(:title)
  # end
end
