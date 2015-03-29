#!/usr/bin/ruby
require 'pdf-reader'

reader = PDF::Reader.new("A Christmas Carol.pdf")
#page = reader.page(1).to_s.split(".")

bookmark = 0
sentences = []

while true
  puts "How many sentences do you want to read?  Type '0' to quit."
  answer = gets.chomp.to_i
  if answer == 0
    break
  end

  sentences = reader.pages.each do |page| end
  sentences[bookmark..(bookmark + answer - 1)].each do |sentence|
    puts sentence
  end

  puts
  bookmark += answer
  puts bookmark
end



