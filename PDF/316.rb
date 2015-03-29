require 'pdf-reader'

class TextMeABook

    def initialize
      @reader = PDF::Reader.new('A Christmas Carol.pdf')
    end

    def page_to_string
      @s = []
      reader.pages.each do |sentence|
        s << sentence.to_s.split("/(\.)|(\!)|(\?)/")
      end
      @s.flatten!
    end

    def user_sentence 
      bookmark = 0
      user_choice = 4
      updated_bookmark = user_choice
      while bookmark < @s.length
        p @s.slice(bookmark..updated_bookmark - 1)
        bookmark = updated_bookmark
        updated_bookmark += user_choice
        puts "- " * 50
      end
    end

end

test = TextMeABook.new
# p test.book_string
#test.page_to_string
p test.user_sentence