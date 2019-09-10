Rails.application.routes.draw do
  resources :breeds
  resources :species
  resources :appointments
  resources :pets
  resources :service_providers
  resources :owners

  get '/', to: "welcome#index", as: :welcome


  get '/signup', to: 'owners#new', as: :signup
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout


  get "/review_form/:id", to: "appointments#review_form", as: "review_form"
  patch "/create_review", to: "appointments#create_review", as: "create_review"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
