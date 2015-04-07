class AddDefaultSentenceBookmarktoUsers < ActiveRecord::Migration
  def change
    change_column :users, :sentence_bookmark, :integer, :default => 0
  end
end
