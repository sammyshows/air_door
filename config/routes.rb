Rails.application.routes.draw do
  devise_for :users

  resources :portals, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :new, :create]
    resources :dashboards, only: [:index, :update]
  end
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
