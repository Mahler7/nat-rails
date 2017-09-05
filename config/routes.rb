Rails.application.routes.draw do
  root "pages#home"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "/voting" => "votes#index"
  get "/suggestions" => "suggestions#index"

end
