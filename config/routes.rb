Rails.application.routes.draw do
  resources :books, only: [:index,:show]
  resources :authors
  resources :publisheds, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
