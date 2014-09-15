Rails.application.routes.draw do
  root :to => 'users#index'

  resources :sessions

  resources :users do
    resources :posts
  end

end
