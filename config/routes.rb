Rails.application.routes.draw do
  root "pages#home"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/voting" => "votes#index"
  get "/suggestions" => "suggestions#index"
end
