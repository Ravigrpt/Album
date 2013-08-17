class CommentsController < ApplicationController
	def new 
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(params[:comment])
		 if @comment.save
		 	redirect_to photo_url(@comment.photo_id)
		 else
		 	render "new"
		 end
	end

	def index
		@coments = Comment.all
	end


end
