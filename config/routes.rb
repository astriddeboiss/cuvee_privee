Rails.application.routes.draw do

  devise_for :users, controllers: {registration: "users/registrations"}
  root to: 'pages#home'
  get 'dashboard', to: 'users#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vines, only:[:index, :show, :new, :create] do
    resources :bookings, only: [:index, :create]
  end

  resources :bookings, only: :update
end
