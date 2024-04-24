Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index" 
  resources :tweets
  delete '/tweets/:id',    to: 'tweet#destroy',      as: 'destroy_tweet'
end
