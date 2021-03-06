Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  end
end
