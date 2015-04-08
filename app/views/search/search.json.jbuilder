json.textbooks @textbooks do |textbook|
  json.id textbook.id
  json.title textbook.title
  json.author textbook.author
  json.summary textbook.summary
end