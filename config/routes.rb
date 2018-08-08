Rails.application.routes.draw do
  get 'landing/index'

  devise_for :users
  get 'home/index'

  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
      post 'sign_up' => 'registration#create'
      resources :images
      resources :products
      resources :points
      resources :items
      resources :orders
      resources :stores
      resources :recycling_stations
    end
  end
end