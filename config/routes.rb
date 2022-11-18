Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "list#index"

  # # See all lists
  # get "lists", to: "lists#index", as: :lists

  # # Create a list
  # get "lists/new", to: "lists#new", as: :new_list
  # post "lists", to: "lists#create"

  # # See one list
  # get "lists/:id", to: "lists#show", as: :list

  # # Create new bookmark
  # get "lists/:id/bookmarks/new", to: "bookmarks#new", as: :new_bookmark
  # post "lists/:id/bookmarks", to: "bookmarks#create"

  # # Delete a bookmark
  # delete "bookmarks/:id", to: "bookmarks#destroy"

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    # resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  # resources :reviews, only: :destroy
end
