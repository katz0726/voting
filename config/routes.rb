Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: 'tops#index'

  resources :users, only: [:show, :edit, :update]
  resources :tops
  resources :campaigns do
    resources :comments, only: [:create, :update, :destroy]
    resources :supporters, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
