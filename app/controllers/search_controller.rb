class SearchController < ApplicationController

  def search
    if params[:searchTerm]
      @textbooks = Book.where("title LIKE ? OR author LIKE ? OR isbn LIKE ?", "%#{params[:searchTerm]}%", "%#{params[:searchTerm]}%", "%#{params[:searchTerm]}%")
    end
  end

end
