Rails.application.routes.draw do

  ########## Auth ##########
  
  post "login", to: "users#login"
  post "signup", to: "users#signup"
  get "profile", to: "users#profile"
  patch "profile", to: "users#update"
  
  ########## Users ##########
  
  get "users/:id", to: "users#show"

  ########## UserCategories ##########
  
  post "user_categories", to: "user_categories#create"
  delete "user_categories/:id", to: "user_categories#destroy"

  ########## Categories ##########

  get "categories", to: "categories#index"

  ########## Listings ##########

  get "listings", to: "listings#index"
  get "listings/:id", to: "listings#show"
  post "listings", to: "listings#create"

end
