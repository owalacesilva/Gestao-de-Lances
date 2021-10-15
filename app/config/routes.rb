Rails.application.routes.draw do
  get 'bets/index'
  get 'reward/index'
  get 'documents/index'
  get 'documents/new'
  get 'documents/show'
  get 'documents/edit'
  get 'documents/udpate'
  get 'documents/destroy'
  root 'home#index'

  resources :my_account

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'admins/registrations'
  }
end
