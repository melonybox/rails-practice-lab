class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @authors = Author.all
    @published = Published.new
  end
end
