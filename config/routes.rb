require 'sidekiq/web'

Rails.application.routes.draw do
  resources :products
  resources :machines
  resources :suppliers
  resources :hospitals
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/medics', to: 'home#medics'
  get '/designers', to: 'home#designers'
  get '/makers', to: 'home#makers'
  get '/council', to: 'home#council'
  get '/location', to: 'home#location'
  get '/workgroups', to: 'home#workgroups'
  get '/urgent', to: 'home#urgent'
  get '/ingenieur_projets', to: 'home#ingenieur_projets'

  get '/projet-filtre', to: 'home#projet_filtre'
  get '/projet-poignee', to: 'home#projet_poignee'
  get '/projet-respirateur', to: 'home#projet_respirateur'
  get '/projet-pousse-seringue', to: 'home#projet_pousse_seringue'
  get '/projet-masque', to: 'home#projet_masque'
  get '/projet-repartiteur', to: 'home#projet_repartiteur'

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
