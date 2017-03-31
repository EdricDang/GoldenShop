Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'


  resource :cart
  resources :order_items, only: [:create, :update, :destroy]
  resources :categories
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  match '/contacts', to: 'contacts#new', via: 'get'
  resources :contacts, only: [:new, :create]
  authenticate :user, lambda { |user| user.admin? } do
    mount Blazer::Engine, at: "monitoring"
  end

  get 'products/my-product'
  mount RailsDb::Engine => '/db', :as => 'db'
  root 'home#index'
end
