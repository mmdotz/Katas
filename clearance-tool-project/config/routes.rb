Rails.application.routes.draw do

  resources :items

  post 'items/index', to: "items#index", as: 'grouped_items'
  get  '/items.csv',  to: 'items#index', as: 'items_export'

  resources :clearance_batches, only: [:index, :create]

  root to: "clearance_batches#index"
end
