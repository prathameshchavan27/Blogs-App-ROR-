Rails.application.routes.draw do
  root "pages#home"
  resources :articles, only: [ :show, :index, :new, :create, :edit, :update, :destroy ]

  get "signup", to: "users#new"
  resources :users, except: [ :new ]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"  

  resources :categories, except: [:destroy]
end
