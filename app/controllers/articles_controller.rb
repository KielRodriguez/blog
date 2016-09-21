class ArticlesController < ApplicationController

	#GET /articles/index
	def index
		@articles = Article.all
	end

	#GET /articles/new
	def new
		@article = Article.new
	end

	#POST /articles
	def create
		@article = Article.new( article_params )

		if @article.save
			redirect_to @article
		else
			render 'new'
		end

	end

	#GET /articles/:id
	def show
		@article = Article.find( params[:id] )
	end

	def edit
		@article = Article.find(params[:id])
	end

	private

	def article_params
		params.require(:article).permit(:title, :text)
	end
end
