Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"
  # get 'api/waiters'
  namespace :api, defaults: {format: :json} do
    resources :waiters, only: [:index, :create, :show, :destroy]
    resources :diners, only: [:index, :create, :show, :destroy]
    resources :tables, only: [:create, :show, :destroy]
  end
end
