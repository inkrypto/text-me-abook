class TextbooksController < ApplicationController

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
    current_user.update(:sentences => params[:sentences], :book_id => params[:id])
    if current_user.save
      flash[:success] = "We will text you #{current_user.sentences} sentences from #{current_user.book.title}."
      redirect_to "/phone"
    else 
      render :show
    end
     text_message(pdf_reader)
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
     @textbooks = Book.find_by_id(params[:id]) 
  end

  def change_book
  end 

  def pdf_reader
    reader = PDF::Reader.new(current_user.book.url)
    #variable_containing_your_senteces
    sentences_bookmark = current_user.sentences
    page_bookmark = 1
    page = reader.pages[page_bookmark].text
    sentences = page.split(".")
    if sentences[sentence_bookmark].nil?
      #turn page:
      page_bookmark += 1
      sentence_bookmark = 0
      page = reader.pages[page_bookmark].text
      sentences = page.split(".")
    end
    # gets the next n sentences from book
    sentences[sentence_bookmark..(sentence_bookmark + answer - 1)].each do |sentence|
      puts sentence + "."
    end
    sentence_bookmark += answer
  end

  def algo
    reader = PDF::Reader.new("../Documents/Code/AnyoneCan/CapStone/text-me-abook/www.planetebook.com/ebooks/Emma.pdf")

    page_bookmark = 3
    sentence_bookmark = 0

    while true
      puts "How many sentences do you want to read?  Type 'q' to quit."
      answer = gets.chomp.to_i
      if answer == 0
        break
      end

      page = reader.pages[page_bookmark].text

      
      # check if we've reached the end of the page:
      if sentences[sentence_bookmark].nil?
        #turn page:
        page_bookmark += 1
        sentence_bookmark = 0
        page = reader.pages[page_bookmark].text
        sentences = page.split(".")
        puts
      end

      puts "SENTENCE BOOKMARK: #{sentence_bookmark}"
      puts "NOW ON PAGE: #{page_bookmark}"
      puts 

      # gets the next n sentences from book
      sentences[sentence_bookmark..(sentence_bookmark + answer - 1)].each do |sentence|
        puts sentence + "."
      end
      sentence_bookmark += answer

      puts
      puts sentence_bookmark
    end
  end

  def book_params
    params.require(:book).permit(:title, :author, :isbn, :summary, :url)
  end
  
end
