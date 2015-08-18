Rails.application.routes.draw do
  resources :posts
  root 'home_page#index'
end
