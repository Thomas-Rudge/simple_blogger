module ArticlesHelper
  def article_params
    params.require(:article).permit(:title, :body, :tag_list, :image)
  end
  
  def button_text
    val = 'submit'
    
    case controller.action_name
    when 'new'
      val = 'Create'
    when 'edit'
      val = 'Save'
    end
    
    return val    
  end
end
