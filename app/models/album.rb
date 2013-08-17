class Album < ActiveRecord::Base
  attr_accessible :name, :title, :description

  has_many :photos
end
