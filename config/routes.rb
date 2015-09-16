Rails.application.routes.draw do
  resources :russian_roulettes
  root "home#home"
  devise_for :users
end
