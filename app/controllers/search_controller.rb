class SearchController < ApplicationController

  def search
    if params[:searchTerm]
      user_textbooks = []
      #this returns all the public books
      @textbooks = Book.where("title LIKE ? OR author LIKE ?", "%#{params[:searchTerm]}%", "%#{params[:searchTerm]}%").where(is_public: true)
      #this return private books (user_books)
      @user_books = UserBook.joins(:book).where(user_books: {user_id: current_user.id}).where("books.title LIKE ? OR books.author LIKE ?", "%#{params[:searchTerm]}%", "%#{params[:searchTerm]}%").all
      @user_books.each do | private_book |
        @textbooks << private_book.book
      end
    end
  end

end
