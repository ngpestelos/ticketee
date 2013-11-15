Ticketee::Application.routes.draw do
  root "projects#index"

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

  resources :projects do
    resources :tickets
  end

  namespace :admin do
    resources :users
  end

  resources :users
end
