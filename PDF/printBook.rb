require 'pdf-reader'

reader = PDF::Reader.new("A Christmas Carol.pdf")

reader.pages.each do |page| 
  puts page 
end

