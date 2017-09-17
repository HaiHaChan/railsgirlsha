class Comment < ApplicationRecord
    
    validates_presence_of :user_name, :body
    mount_uploader :picture, PictureUploader
    belongs_to :idea
    belongs_to :user
end
