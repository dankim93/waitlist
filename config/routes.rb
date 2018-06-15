Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :diners, only: [:index, :create, :show, :destroy] do
      collection do
        get 'nonmatched'  # /api/diners/nonmatched
      end
    end

    resources :tables, only: [:index, :create, :show, :destroy] do
      collection do
        get 'available' # /api/tables/available
      end
    end

    # resources :tables, only: [:index, :create, :show, :destroy]
  end
end
