Rails.application.routes.draw do
  get 'booking/index'

  get 'booking/create'

  get 'users/new'

  get 'users/create'

  get 'vines/index'

  get 'vines/show'

  get 'vines/new'

  get 'vines/create'

  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'users#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vines, only:[:index, :show, :new, :create] do
    resources :bookings, only: [:index, :create]
  end

end
