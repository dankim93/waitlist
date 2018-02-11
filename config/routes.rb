Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"
  namespace :api, defaults: {format: :json} do
    resources :waiters, only: [:create, :show, :destroy]
    # resources :users, only: [:create, :show]
    # resource :session, only: [:create, :destroy, :show]
    # resources :photos, only: [:index, :create, :destroy, :show]
    # resources :comments, only: [:index, :create, :destroy, :show]
    # resources :albums, only: [:index, :create, :destroy, :show]
  end
end
