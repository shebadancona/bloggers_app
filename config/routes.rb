Rails.application.routes.draw do

 root 'sessions#new'
  get '/articles/my_articles' => 'articles#my_articles'
  get '/writers/registration' => 'writers#registration'
  get 'user/registration' => 'users#registration'
  resource :sessions
  resources :writers
  resources :users
  resources :articles
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
