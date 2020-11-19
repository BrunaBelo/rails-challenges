Rails.application.routes.draw do
  resources :tags
  resources :tasks
  devise_for :users
  root to: "home#index"
end
