Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
end
# add a secret key
