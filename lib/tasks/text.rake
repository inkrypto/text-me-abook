task :text => :environment do
  User.all.each do |user|
    book = user.book
    book.text(user)
  end
end
