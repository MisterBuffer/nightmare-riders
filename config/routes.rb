Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check



  # Defines the root path route ("/")
  # root "posts#index"
  #GET /about
  get "about-us", to: "about#index", as: :about
  get "/sign-up", to: "registration#new"
  post "/sign-up", to: "registration#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/profile", to: "profile#index"
  put "/profile", to: "profile#save_bio"
  root to: "main#index"
end
