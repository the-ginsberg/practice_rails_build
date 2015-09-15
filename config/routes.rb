Rails.application.routes.draw do

  get 'roulettes/home'
  root "home#home"
  devise_for :users
end
