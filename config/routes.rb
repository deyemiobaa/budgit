Rails.application.routes.draw do
  devise_for :users
  resources :payments
  resources :categories
  
  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  root to: 'welcome#index'
end
