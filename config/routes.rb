Rails.application.routes.draw do
  devise_for :users
  resources :blood_gulcose_readings
  resources :users
  root to: 'blood_gulcose_readings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
