Rails.application.routes.draw do
  devise_for :users

  resources :portals, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resource :dashboard, only: [:show]
    resources :bookings, only: [:destroy]
  get "dashboard" , to: "dashboards#show"

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
