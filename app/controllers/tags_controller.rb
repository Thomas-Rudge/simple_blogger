class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def require_login
    unless logged_in?
      redirect_to tags_path
      return false
    end
  end
  
  def index
    @tags = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.notice = "Tag Deleted!"
  end
end
