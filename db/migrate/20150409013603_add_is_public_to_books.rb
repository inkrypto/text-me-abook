class AddIsPublicToBooks < ActiveRecord::Migration
  def change
    add_column :books, :is_public, :boolean, default: false 
  end
end
