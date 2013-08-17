class AlbumsController < ApplicationController

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(params[:album])
		if @album.save
			redirect_to albums_url
		else
			render "new"
		end
	end

	def index
		@albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
	end

end
