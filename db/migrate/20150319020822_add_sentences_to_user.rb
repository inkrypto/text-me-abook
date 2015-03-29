class AddSentencesToUser < ActiveRecord::Migration
  def change
    add_column :users, :sentences, :integer
  end
end
