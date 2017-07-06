Rails.application.routes.draw do

  get 'providers/show'

  get 'users/show'

  get 'user/show'

  resources :services
  resources :categories
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'static_pages/about'
  root 'home#index'

  devise_for :users
  devise_for :providers

  get 'filter_services_by_category' => 'orders#filter_services_by_category'

  resources :users, :only => [:show]
  resources :providers, :only => [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
