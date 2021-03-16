Rails.application.routes.draw do

  post "login", to: "users#login"
  post "signup", to: "users#signup"
  
  get "profile", to: "users#profile"

  patch "users/:id", to: "users#update"
  get "users/:id", to: "users#show"

end
