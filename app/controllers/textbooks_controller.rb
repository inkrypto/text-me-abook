class TextbooksController < ApplicationController
  require 'open-uri'

  def index
    # @textbooks = Book.all
    # if params[:search]
    #   @textbooks = Book.where("title LIKE ? OR author LIKE ? OR isbn LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    # end
  end


  def phone_number
    current_user.update(:phone => params[:phone])
    if current_user.save
      flash[:success] = "Phone number added."
      redirect_to "/"
    else 
      render :index
    end
  end

  def new
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN'] 

    account_sid = ENV['ACCOUNT_SID'] 
    auth_token = ENV['AUTH_TOKEN']
    
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(account_sid, auth_token)   
  end

  def create
    # put your own credentials here 
     text_message(params[:body])
    redirect_to "/"
  end 

  def add_sentences
    current_user.update(:sentences => params[:sentences], :book_id => params[:id], :page_bookmark => 1, :sentence_bookmark => 0)
    # if current_user.save
      flash[:success] = "We will text you #{current_user.sentences} sentences from #{current_user.book.title}."
   
     book = Book.find(params[:id])
     book.text(current_user)
     redirect_to authenticated_root_path
  end

  

  def text_message(body)
     account_sid = ENV['ACCOUNT_SID'] 
     auth_token = ENV['AUTH_TOKEN'] 
    
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    
    @client.account.messages.create({
      :from => '+19046004739', 
      :to => '9045270149', 
      :body => body 
    })
  end

  def upload
    @textbook = Book.new
  end

  def upload_book
    @textbook = Book.create(book_params)
    UserBook.create(user_id: current_user.id, book_id: @textbook.id)
    flash[:success] = "Book added."
    redirect_to "/upload"
  end

  def show
     @textbook = Book.find(params[:id]) 
  end

  def change_book
  end 

  
  def book_params
    params.require(:book).permit(:title, :author, :isbn, :summary, :url)
  end
  
end
