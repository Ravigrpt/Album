class Comment < ActiveRecord::Base
  attr_accessible :message, :photo_id

  belongs_to :photo
end
