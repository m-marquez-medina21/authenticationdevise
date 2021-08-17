Rails.application.routes.draw do
  get 'users/profile/:id', to: 'users#show', as: 'profile'
  devise_for :users
  resources :stories
  root to: "stories#index"
  get 'users/dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
