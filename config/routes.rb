require 'sidekiq/web'

Rails.application.routes.draw do
  resources :publications
  namespace :admin do
    resources :announcements
    resources :members
    resources :projects
    resources :users
    resources :notifications
    resources :services
    root to: "users#index"
  end

  resources :publications
  resources :projects
  resources :members
  get '/presse', to: 'home#presse'
  get '/conseil', to: 'home#conseil'
  get '/groupes', to: 'home#groupes'
  get '/contact', to: 'home#contact'
  get '/soignant', to: 'home#soignant'
  get '/ingenieur', to: 'home#ingenieur'
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/autres_demandes', to: 'home#autres_demandes'
  get '/infrastructure', to: 'home#infrastructure'
  get '/remerciements', to: 'home#remerciements'

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
