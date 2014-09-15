Rails.application.routes.draw do
  root :to => 'users#index'
  get '/login', :to => 'sessions#new'

  resources :sessions

  resources :users do
    resources :posts
  end

end
