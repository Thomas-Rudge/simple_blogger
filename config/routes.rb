Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :articles
  
  get 'articles/:id', to: 'articles#show', as: :article
  
  root 'articles#index'
end
