Rails.application.routes.draw do
  get 'login' 		=> 'session#new'
  post 'login' 		=> 'session#create'
  delete 'logout' 	=> 'session#destroy'

  resources :users

  resources :posts do
  	resources :comments
  end

  # root "posts#index"
  root to: "testing#index"
  
end