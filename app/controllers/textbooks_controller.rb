class TextbooksController < ApplicationController
  require 'open-uri'

  def index
    # @textbooks = Book.all
    if params[:search]
      @textbooks = Book.where("title LIKE ? OR author LIKE ? OR isbn LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    end
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
    # book = Book.find_by(params[:id)
    # users = User.find_by(:id => current_user.id)
    current_user.update(:sentences => params[:sentences], :book_id => params[:id], :page_bookmark => 1)
    # if current_user.save
      flash[:success] = "We will text you #{current_user.sentences} sentences from #{current_user.book.title}."
      # content = 
      # text_message(params[:body])
      # p "HERE ARE YOUR SENTENCES:"
      # puts
      # p pdf_reader
      # text_message(pdf_reader)
    # else 
      # render :show
    # end
     pdf_reader
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
    flash[:success] = "Book added."
    redirect_to "/upload"
  end

  def show
     @textbook = Book.find(params[:id]) 
  end

  def change_book
  end 

  def pdf_reader
   user_book = current_user.book

   io     = open(user_book.url.url)
   reader = PDF::Reader.new(io)

   page = reader.pages[current_user.page_bookmark].text

   page_sentences = page.split(".")
   #page_sentences is an array

   if page_sentences[current_user.sentence_bookmark].nil? #this tests to see if they are at the end of the page
     current_user.update(:page_bookmark => current_user.page_bookmark + 1, :sentence_bookmark => 0)
     page = reader.pages[current_user.page_bookmark].text
     page_sentences = page.split(".")
   end

   sentences = current_user.sentences
   sentence_bookmark = current_user.sentence_bookmark
   page_bookmark = current_user.page_bookmark

   sentences_to_text = ""
   page_sentences[sentence_bookmark..(sentence_bookmark + sentences - 1)].each do |sentence|
     sentences_to_text += sentence + "."
   end

   # page_sentences[10..(10 + 3 - 1)]
   # page_sentences[10..12].each do |sentence|
   # end

   account_sid = ENV['ACCOUNT_SID'] 
   auth_token = ENV['AUTH_TOKEN'] 

   @client = Twilio::REST::Client.new(account_sid, auth_token)

   @client.account.messages.create({
         :from => '+19046004739', 
         :to => current_user.phone, 
         :body => sentences_to_text
       })

   current_user.update(:sentence_bookmark => sentence_bookmark + sentences)
  end
  
  def book_params
    params.require(:book).permit(:title, :author, :isbn, :summary, :url)
  end
  
end
