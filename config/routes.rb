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
    resources :study_sessions, only: [:create, :show, :update]
  end
  get "/study_session/:id", to: "study_sessions#show", as: :study_session

  resources :study_sessions, only: [:index, :show, :update]
  resources :topics, only: [:create, :destroy]
end
