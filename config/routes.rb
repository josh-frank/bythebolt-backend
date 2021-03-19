Rails.application.routes.draw do

  resources :listings
  resources :user_categories
  ########## Auth ##########
  
  post "login", to: "users#login"
  post "signup", to: "users#signup"
  get "profile", to: "users#profile"
  patch "profile", to: "users#update"
  
  ########## Users ##########
  
  get "users/:id", to: "users#show"

  ########## Categories ##########

  get "categories", to: "categories#index"

  ########## Listings ##########

  get "listings", to: "listings#index"
  get "listings/:id", to: "listings#show"

end
