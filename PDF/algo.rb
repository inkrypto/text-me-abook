#!/usr/bin/ruby

require 'pdf-reader'

reader = PDF::Reader.new("../www.planetebook.com/ebooks/Emma.pdf")
#page = reader.page(1).to_s.split(".")

bookmark = 0

while true
  puts "How many sentences do you want to read?  Type 'q' to quit."
  answer = gets.chomp.to_i
  if answer == 0
    break
  end

  sent = []

  reader.pages.each do |sentence|
    sent << sentence.to_s.split("/(\.)|(\!)|(\?)/")
  end
    
  sent.slice(bookmark..(bookmark + answer - 1)).each do |sentence|
    puts sentence + "."
  end

  puts
  bookmark += answer
  puts bookmark
end