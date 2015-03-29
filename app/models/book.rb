class Book < ActiveRecord::Base
  has_many :users
  
  mount_uploader :url, TextmebookUploader

end
