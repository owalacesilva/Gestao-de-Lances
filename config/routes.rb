Rails.application.routes.draw do
  namespace :admins do
    get 'auction_pictures/index'
    get 'auction_pictures/show'
    get 'auction_pictures/create'
    get 'auction_pictures/destroy'
  end
  root 'home#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  resources :my_account
  resources :documents
  resources :reward
  resources :bets
  resources :contact_us
  resources :about_us
  resources :faq
  resources :auction_page, path: :auction

  namespace :admins do
    get '', controller: :dashboard, action: :index, as: :dashboard
    resources :auctions do
      resources :auction_pictures, only: [:index, :show, :create, :destroy], path: 'pictures'
    end
    resources :clients
    resources :settings do
      post '', action: :update, on: :collection
    end
  end
end
