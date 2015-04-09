class UserBooksController < ApplicationController

  def mybooks
      @textbook = Book.new
  end

  # def upload_book
  #   @textbook = Book.create(book_params)
  #   flash[:success] = "Book added."
  #   redirect_to "/upload"
  # end

  # def show
  #    @textbook = Book.find(params[:id]) 
  # end

end

