require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :admin do
    resources :announcements
    resources :members
    resources :projects
    resources :users
    resources :hospitals
    resources :machines
    resources :notifications
    resources :products
    resources :services
    resources :suppliers
    
    root to: "users#index"
  end
  # resources :products
  # resources :machines
  # resources :suppliers
  # resources :hospitals
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

  get '/projet_intubation', to: 'home#projet_intubation'
  get '/projet_visiere', to: 'home#projet_visiere'
  get '/projet_bouclier_nasal', to: 'home#projet_bouclier_nasal'
  get '/projet_poignee', to: 'home#projet_poignee'
  get '/projet_respirateur', to: 'home#projet_respirateur'
  get '/projet_pousse_seringue', to: 'home#projet_pousse_seringue'
  get '/projet_masque', to: 'home#projet_masque'
  get '/projet_masque_plongee', to: 'home#projet_masque_plongee'
  get '/projet_repartiteur', to: 'home#projet_repartiteur'

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
