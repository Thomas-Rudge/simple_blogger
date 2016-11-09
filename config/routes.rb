Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  
  resources :articles do
    resources :comments
  
    get 'articles/:id', to: 'articles#show', as: :article
    get 'articles/edit.:id', to: 'articles#edit', as: :edit
    patch 'articles/:id', to: 'articles#update', as: :update
    delete 'articles/:id', to: 'articles#destroy', as: :delete
  end
  
  resources :tags
end
