Ticketee::Application.routes.draw do
  get "users/new"
  get "users/create"
  get "users/show"
  get "users/edit"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

  root "projects#index"

  resources :projects do
    resources :tickets
  end

  resources :users
end
