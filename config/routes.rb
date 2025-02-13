Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]  # Nested since bookmarks belong to lists
  end
  resources :bookmarks, only: [:destroy]  # Direct delete route
end
