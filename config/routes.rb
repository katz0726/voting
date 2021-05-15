Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: 'tops#index'

  resources :users, only: [:show, :edit, :update]
  resources :tops, only: [:index, :show]
  resources :campaigns do
    resources :comments, only: [:create, :update, :destroy]
    resources :supporters, only: [:create]
  end
end
