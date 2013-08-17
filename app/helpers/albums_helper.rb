module AlbumsHelper

	def image_link(photo)
		return image_tag photo.image.url(:small)
	end
end
