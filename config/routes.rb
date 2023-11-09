Rails.application.routes.draw do
  resources :issues
  
  root 'issues#index'

 
  post "issues/:id/toggle", to: "issues#toggle"
  delete "issues/:id" => "issues#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
