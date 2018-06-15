Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    # resources :diners, only: [:index, :create, :show, :destroy]
    resources :diners do
      # get 'test'
      collection { get 'test' } # /api/diners/test
    end





    resources :tables, only: [:index, :create, :show, :destroy]
  end
end
