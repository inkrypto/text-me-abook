require 'pdf-reader'

reader = PDF::Reader.new('A Christmas Carol.pdf')

bookmark = 1
lines = 20
count = 1

reader.pages.each do |page|
  page.text.each_line {|line|

        if count >= bookmark
                puts line
        end
        count = count + 1

        if count == bookmark + lines
                # Do something here before exit, like persist bookmark
                # on disk
                exit
        end
  }

end