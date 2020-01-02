Rails.application.routes.draw do
  devise_for :users
  root 'sports#index'
  resources :sports
end
