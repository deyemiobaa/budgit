Rails.application.routes.draw do
  resources :payments
  resources :categories
  devise_for :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  root to: 'welcome#index'
end
