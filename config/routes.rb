Rails.application.routes.draw do
  # devise_for :users
  resources :blood_gulcose_readings
  root to: 'users#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
