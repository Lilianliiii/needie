Rails.application.routes.draw do
  devise_for :users
  root to: 'moods#index'
  get 'profile', to: 'pages#profile', as: :profile


  resources :moods, only: [:index, :show] do
    member do
      get :audio
      get :movement
      get :affirmations
      get :goodvibes
    end
  end
  resources :audios, only: [:show]
  resources :surveys, only: [ :new, :create, :show ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
