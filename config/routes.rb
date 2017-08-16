Rails.application.routes.draw do
  resources :restaurants, except: [:delete]
  resources :reviews
end
