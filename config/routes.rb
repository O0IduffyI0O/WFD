Rails.application.routes.draw do
  
  devise_for :users
  resources :users do
    resource :profile
  end
  
  resources :recipies
  
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'antarctica', to: 'pages#antarctica'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
