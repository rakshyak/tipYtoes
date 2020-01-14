Rails.application.routes.draw do
  resources :users
  resources :bookings
  resources :contacts
  resources :galleries
  resources :caregories
  resources :services
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
