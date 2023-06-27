class Book < ActiveRecord::Base
  has_many :users
  belongs_to :user_book
  mount_uploader :url, TextmebookUploader

  def text(user)
    user_book = user.book

    io     = open(user_book.url.url)
    reader = PDF::Reader.new(io)

    page = reader.pages[user.page_bookmark].text

    page_sentences = page.split(/[.,!?;]/)
    #page_sentences is an array
    if page_sentences[user.sentence_bookmark].nil? #this tests to see if they are at the end of the page
      user.update(:page_bookmark => user.page_bookmark + 1, :sentence_bookmark => 0)
      page = reader.pages[user.page_bookmark].text
      page_sentences = page.split(/[.,!?;]/)
    end

    sentences = user.sentences
    sentence_bookmark = user.sentence_bookmark
    page_bookmark = user.page_bookmark

    sentences_to_text = ""
    page_sentences[sentence_bookmark..(sentence_bookmark + sentences - 1)].each do |sentence|
      sentences_to_text += sentence + "."
    end

    # page_sentences[10..(10 + 3 - 1)]
    # page_sentences[10..12].each do |sentence|
    # end
    puts "MODEL ENV"
    puts ENV

    account_sid = ENV['ACCOUNT_SID'] 
    auth_token = ENV['AUTH_TOKEN'] 

    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.account.messages.create({
          :from => '+19046004739', 
          :to => user.phone, 
          :body => sentences_to_text
        })

    user.update(:sentence_bookmark => sentence_bookmark + sentences)
  end

end
