class AddBookIdToUsers < ActiveRecord::Migration
  def change
    add_column  :users, :book_id, :integer
  end
end
