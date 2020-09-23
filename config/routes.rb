Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :cars do
    resources :trades, only: [:new, :create]
  end
  resources :user_cars, only: [:index]

end
