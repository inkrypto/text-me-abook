class ChangeSummaryDataType < ActiveRecord::Migration
  def change
    change_column :books, :summary, :text
  end
end
