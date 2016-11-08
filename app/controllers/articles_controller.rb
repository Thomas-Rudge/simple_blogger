class ArticlesController < ApplicationController
  include ArticlesHelper
  
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
  end
  
  def edit
    @article = Article.find(params[:format])
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