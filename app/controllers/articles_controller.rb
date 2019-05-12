class ArticlesController < ApplicationController
  def create
 @article = Article.new(article_params)
 writer = Writer.find(session[:writer_id])
 @article.writer_id = writer.id
 if @article.save
  redirect_to articles_url
  end
end

  def new
    @article = Article.new
  end

  def index
  # @articles = Article.all
  @q = Article.ransack(params[:q])
  @articles = @q.result.includes(:writer).to_a.uniq  
  end

  def my_articles
   @a = Writer.find(session[:writer_id]).articles
   @q = @a.ransack(params[:q])
   @articles = @q.result(distinct: true)
  end

  def edit
  end

  def update
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end
 
  def show
    @article = Article.find(params[:id])
  end
  private 
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
