class ArticlesController < ApplicationController

	#GET /articles/index
	def index
		@articles = Article.all
	end

	#GET /articles/new
	def new
	end

	#POST /articles
	def create
		@article = Article.new( params.require(:article).permit(:title, :text) )

		@article.save

		redirect_to @article
		
	end

	#GET /articles/:id
	def show
		@article = Article.find( params[:id] )		
	end
end
