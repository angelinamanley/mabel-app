Rails.application.routes.draw do
  resources :appointments
  resources :pets
  resources :service_providers
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
