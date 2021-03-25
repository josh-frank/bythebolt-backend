Rails.application.routes.draw do

  ########## ActionCable ##########

  mount ActionCable.server => "/cable"

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
  post "listings", to: "listings#create"
  patch "listings/:id", to: "listings#update"
  delete "listings/:id", to: "listings#destroy"
  get "listings/:id", to: "listings#show"
  
  ########## Favorites ##########

  post "favorites", to: "favorite_listings#create"
  delete "favorites/:id", to: "favorite_listings#destroy"

  ########## Chats ##########

  get "chats/:id", to: "chats#show"

  ########## Messages ##########

  post "messages", to: "messages#create"

end
