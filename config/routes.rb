# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :jobs
  get "jobs", to: "jobs#index"
  get "created_jobs", to: "jobs#createdjobs"
  get "claimed_jobs", to: "jobs#claimedjobs"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  # get "/", to: "main#index" ; same as below!
  root to: "main#index"
end
