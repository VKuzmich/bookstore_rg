# frozen_string_literal: true

class BooksController < ApplicationController
  # before_action :authenticate_user!
  include BackUrl

  def index
    @latest_books = BookDecorator.latest_books
    @best_sellers = BookDecorator.best_sellers

    @category = Category.all
  end

  def show
    @back_url = get_back_url
    @book = Book.find_by(id: params[:id]).decorate

  end
end
