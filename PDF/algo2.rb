require 'pdf-reader'

reader = PDF::Reader.new('A Christmas Carol.pdf')

s = []

reader.pages.each do |sentence|
  s << sentence.to_s.split("/(\.)|(\!)|(\?)/")
end

s.flatten!

puts "How many sentences do you want to read?  Type '0' to quit."
user_choice = gets.chomp.to_i

bookmark = 0
updated_bookmark = user_choice

while bookmark < s.length
  p s.slice(bookmark..updated_bookmark - 1)
  bookmark = updated_bookmark
  updated_bookmark += user_choice 
  puts "- " * 50
end  