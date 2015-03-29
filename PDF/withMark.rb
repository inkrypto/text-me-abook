require 'pdf-reader'

reader = PDF::Reader.new("A Christmas Carol.pdf")

bookmark = 0

while true
  puts "How many sentences do you want to read?  Type 'q' to quit."
  answer = gets.chomp.to_i
  if answer == 0
    break
  end

  page = reader.pages[50].text
  sentences = page.split("/(\.)|(\!)|(\?)/")
  sentences[bookmark..(bookmark + answer - 1)].each do |sentence|
    puts sentence + "."

  end
  puts
  bookmark += answer
  puts bookmark
end

