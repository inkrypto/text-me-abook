
require 'pdf-reader'

sentences = []

reader = PDF::Reader.new('A Christmas Carol.pdf')

pages.each do |page|
  page = page.text
  page = page.split(".")
  page.each do | sentence |
    sentences << sentence
  puts sentences
  end
end
