class ChangeLimitForPhone < ActiveRecord::Migration
  def change
    change_column :users, :phone, :string, :limit => 255
  end
end
