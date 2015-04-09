class RemoveTitleSummaryUrlAuthorFromUserBooks < ActiveRecord::Migration
  def change
    remove_column :user_books, :title
    remove_column :user_books, :summary
    remove_column :user_books,:url 
    remove_column :user_books,:author 
    add_column :user_books, :book_id, :integer
  end
end
