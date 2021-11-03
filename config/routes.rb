Rails.application.routes.draw do
  namespace :admins do
    get 'auctions/index'
    get 'auctions/show'
    get 'auctions/new'
    get 'auctions/create'
    get 'auctions/edit'
    get 'auctions/update'
    get 'auctions/destroy'
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
    resources :auctions
  end
end
