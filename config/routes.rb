Rails.application.routes.draw do
  devise_for :users  # Devise will automatically handle routes for sign-up, login, etc.

  # Define the dashboard route after sign-up and email confirmation
  get "/dashboard", to: "dashboard#index", as: "dashboard"  # Dashboard route

  # Define the root path route (this is your home page)
  root "home#index"
end
