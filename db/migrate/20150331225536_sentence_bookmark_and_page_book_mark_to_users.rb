class SentenceBookmarkAndPageBookMarkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sentence_bookmark, :integer 
    add_column :users, :page_bookmark, :integer
  end
end
