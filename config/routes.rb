Rails.application.routes.draw do
  resources :reports, only: [:index] do
    collection do
      get 'daily'
      get 'monthly'
      get 'monthwise'
    end
  end
  # devise_for :users
  resources :blood_gulcose_readings, path: 'glucose-readings'
  root to: 'blood_gulcose_readings#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, only: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
