Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: 'tops#index'

  resources :tops
  resources :campaigns do
    resources :comments, only: [:create, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
