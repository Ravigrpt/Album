class Photo < ActiveRecord::Base
   attr_accessible :name, :title, :description, :image, :album_id

   has_attached_file :image, :styles => { :small => "150x150" }

   belongs_to :album
   has_many :comments
   validates_presence_of :name, :image
end
