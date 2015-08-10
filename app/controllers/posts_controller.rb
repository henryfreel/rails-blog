class PostsController < ApplicationController

	def index
		@posts = Post.all
		render :index
	end

	def show
		# set id from URL params
		post_id = params[:id]

		# find plane in db by id
		@post = Post.find(post_id)

		#render show view
		render :show
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		post_params = params.require(:post).permit(:title, :body)
		Post.create(post_params)
		redirect_to posts_path 
	end

	def edit
		# set id from params
		post_id = params[:id]

		# find post in db by its id
		@post = Post.find(post_id)

		# render edit view
		render :edit
	end

	def update
		# set id from params
		post_id = params[:id]

		# find post in db by its id
		@post = Post.find(post_id)

		# updated post data from forms
		post_params = params.require(:post).permit(:title, :body)

		# update the post in db
		@post.update_attributes(post_params)

		# render edit view
		render :show
	end

end
