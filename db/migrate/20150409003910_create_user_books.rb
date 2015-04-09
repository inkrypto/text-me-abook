class CreateUserBooks < ActiveRecord::Migration
  def change
    create_table :user_books do |t|
      t.integer :user_id
      t.string :title
      t.string :author
      t.string :url
      t.text :summary

      t.timestamps null: false
    end
  end
end
