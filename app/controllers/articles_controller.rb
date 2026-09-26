class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new 

  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
end
