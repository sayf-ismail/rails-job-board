# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  
  
  get "jobs", to: "jobs#index"

  # get "/", to: "main#index" ; same as below!
  root to: "main#index"
end
