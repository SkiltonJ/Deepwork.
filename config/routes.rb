Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/profile", to: "pages#profile"
  get "/quickstart", to: "pages#quickstart"
  get "/tease", to: "pages#tease"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :themes do
    resources :study_sessions, only: [:create]
  end

  resources :study_sessions, only: [:index, :show]

  resources :topics, only: [:create, :destroy]
end
