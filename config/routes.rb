Rails.application.routes.draw do
  root to: 'articles#index'
  resources :article_365s, except: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
