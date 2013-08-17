class PhotosController < ApplicationController

	def new
   		@photo = Photo.new
   		if params[:album_id].present?
   			@photo.album_id = params[:album_id]
   		end
	end

	def create
	   	@photo = Photo.new(params[:photo])
	   	if @photo.save
	   		redirect_to album_url(@photo.album_id)
	   	else
	   		render "new"
	   	end
	end

	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end
	
end
