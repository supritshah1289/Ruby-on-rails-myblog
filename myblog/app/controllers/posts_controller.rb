class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
		
	end 

	#this method takes values from new.html and saves in variable and send its to db
	def create 
		@post = Post.new(post_params) #create new instance that receives data from post
		@post.save #saving data
		redirect_to post_path(@post)
	end 
	
	#get data from database and show it on show page 	
	def show
		@post = Post.find(params[:id])
	end


	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to post_path(@post)

	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to index_path

	end


	private
	def post_params
		params.require(:post).permit(:title, :body)
	end
end
