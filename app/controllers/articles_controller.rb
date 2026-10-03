class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new 
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params.merge(user_id: current_user.id))

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])

    if @article.destroy
      redirect_to articles_path, notice: "Artigo excluído com sucesso."
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :user_id)
  end
end
