require 'pdf-reader'

reader = PDF::Reader.new("../www.planetebook.com/ebooks/A Christmas Carol-2.pdf")

counter = 0
puts "How many sentences do you want?"
answer = gets.chomp.to_i

book = reader.pages 

sentences = []

book.each do |page|
  page = page.text
  page = page.split(".")
  page.each do |sentence|
    sentences << sentence
    # puts answer.times do
    #   sentences.slice!(0)
    #end
  end

answer.times do 
  puts sentences
  bookmark += 1
end

end

p sentences.class
