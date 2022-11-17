Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # See all lists
  get "lists", to: "lists#index", as: :lists

  # Create a list
  get "lists/new", to: "lists#new", as: :new_list
  post "lists", to: "lists#create"

  # See one list
  get "lists/:id", to: "lists#show", as: :list

  # Create new bookmark
  get "lists/:id/bookmarks/new", to: "bookmarks#new", as: :new_bookmark
  post "lists/:id/bookmarks", to: "bookmarks#create", as: :list_bookmarks

  # Delete a bookmark
  delete "bookmarks/:id", to: "bookmarks#destroy"

end
