#!/usr/bin/ruby
require 'pdf-reader'

reader = PDF::Reader.new("../www.planetebook.com/ebooks/1984.pdf")
#page = reader.page(1).to_s.split(".")

bookmark = 0
sentences = []

while true
  puts "How many sentences do you want to read?  Type '0' to quit."
  answer = gets.chomp.to_i
  if answer == 0
    break
  end

  book = reader.pages.each do |page| end

  page = reader.pages[18].text
  sentences = page.split(".")
  sentences[bookmark..(bookmark + answer - 1)].each do |sentence|
    puts sentence + "."
  end

  puts
  bookmark += answer
  puts bookmark
end



