Rails.application.routes.draw do
  devise_for :users
  root to: 'moods#index'
  get 'profile', to: 'pages#profile', as: :profile


  resources :moods, only: [ :index, :show, :audio, :movement, :affirmations, :goodvibes]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :survey, only: [ :new, :create]
end
