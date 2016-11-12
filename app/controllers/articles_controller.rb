class ArticlesController < ApplicationController
  before_filter :require_login, except: [:index, :show]
  include ArticlesHelper
  
  def require_login
    unless logged_in?
      redirect_to root_path
      return false
    end
  end
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
    
    flash.notice = "Article Created"
    
    redirect_to article_path(@article)
  end
  
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
    
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    
    flash.notice = "Article Updated!"
    
    redirect_to article_path(@article)
  end
  
  def destroy
    Article.find(params[:id]).destroy
    
    flash.notice = "Article Deleted!"
    
    redirect_to '/'
  end
  
end
