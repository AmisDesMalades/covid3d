require 'sidekiq/web'

Rails.application.routes.draw do
  resources :orders
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
  resources :projects do
    member do
      delete :delete_image
    end
  end
  resources :members
  get '/contact', to: 'home#contact'
  get '/soignant', to: 'home#soignant'
  get '/ingenieur', to: 'home#ingenieur'
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/autres_demandes', to: 'home#autres_demandes'
  get '/infrastructure', to: 'home#infrastructure'
  get '/remerciements', to: 'home#remerciements'
  get '/workflow', to: 'home#workflow'
  get '/collaboration', to: 'home#collaboration'

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'

  get '/sitemap.xml.gz', to: redirect("https://s3-eu-west-3.amazonaws.com/covid3d-production/sitemap.xml.gz")

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
