#!/usr/bin/ruby

require 'pdf-reader'


reader = PDF::Reader.new("A Christmas Carol.pdf")

page_bookmark = 3
sentence_bookmark = 0

while true
  puts "How many sentences do you want to read?  Type 'q' to quit."
  answer = gets.chomp.to_i
  if answer == 0
    break
  end


  page = reader.pages[page_bookmark].text
  sentences = page.split(".")

  # Code to get all the pages into a string:
  # s = []
  # reader.pages.each do |sentence|
  #   s << sentence.to_s.split("/(\.)|(\!)|(\?)/")
  # end
  # s.flatten!


  #Original code to get one page at a time:
  # page = reader.pages[50].text
  # sentences = page.split("/(\.)|(\!)|(\?)/")
  # sentences[bookmark..(bookmark + answer - 1)].each do |sentence|
  #   puts sentence + "."


  
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

# Code to get only the sentences requested by the user--it doesn't work. It returns pages not sentences.
# while bookmark < s.length
#   p s.slice(bookmark..updated_bookmark - 1)
#   bookmark = updated_bookmark
#   updated_bookmark += user_choice 
#   puts "- " * 50
# end  


