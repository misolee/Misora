Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :products, only: [:index, :show]
    resources :brands, only: [:index, :show]
    resources :basket_items, only: [:index, :create, :update, :destroy]
    resources :reviews, only: [:index, :create, :show, :update, :destroy]
    delete '/basket_items', to: 'basket_items#destroy_all'
  end

  root to: 'static_pages#root'
end
