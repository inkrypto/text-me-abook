namespace :textoutbooks do
  desc "Text people their books."
  task :text => :environment do
    User.all.each do |user|
      book = user.book
      book.text(user) if book
    end
  end
end

