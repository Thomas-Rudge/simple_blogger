Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :articles
  
  get 'articles/:id', to: 'articles#show', as: :article
  get 'articles/edit.:id', to: 'articles#edit', as: :edit
  patch 'articles/:id', to: 'articles#update', as: :update
  delete 'articles/:id', to: 'articles#destroy', as: :delete
  
  root to: 'articles#index'
end
