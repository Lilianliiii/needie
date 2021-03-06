Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
  root to: 'moods#index'
  get 'profile', to: 'pages#profile', as: :profile
  get 'contact', to: 'pages#contact', as: :contact


  resources :moods, only: [:index, :show] do
    member do
      get :audio
      get :movement
      get :affirmations
      get :goodvibes
    end
  end
  resources :audios, only: [:show]
  resources :videos, only: [:show]
  resources :animations, only: [:show]
  resources :readings, only: [:show]
  resources :walks, only: [:show, :index]

  resources :user_moods, only: [:index]

  resources :surveys, only: [:new, :create, :show, :update, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
