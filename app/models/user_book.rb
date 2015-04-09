class UserBook < ActiveRecord::Base

  belongs_to :user
  belongs_to :book
  mount_uploader :url, TextmebookUploader

end
