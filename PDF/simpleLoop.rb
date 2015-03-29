array = [1,3,5,6,3,7,8,23,10,64]

bookmark = 0
puts "how many do you want?"
answer = gets.chomp.to_i
puts
puts "Here are your numbers:"
puts

# answer.times do
#   puts array[bookmark]
#   bookmark += 1
# end

array.each_with_index do |n, index|
  break if index == answer
  puts n
end