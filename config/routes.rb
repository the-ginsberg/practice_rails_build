Rails.application.routes.draw do
  get 'roulettes/new'
  get 'roulettes/home'
  root "home#home"
  devise_for :users
end
