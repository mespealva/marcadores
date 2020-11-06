Rails.application.routes.draw do
  resources :webmarks
  resources :types
  resources :cats
  get 'json/json', to:'json#json', as: 'json'
  root 'cats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
