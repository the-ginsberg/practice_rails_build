Rails.application.routes.draw do
  resources :russian_roulettes
  get 'roulettes/new'
  get 'roulettes/home'
  root "home#home"
  devise_for :users
end
