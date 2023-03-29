Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/profile", to: "pages#profile"
  post "/quickstart", to: "study_sessions#create", as: :quickstart
  get "/tease", to: "pages#tease"
  get "/builder", to: "pages#creation"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :themes do
    resources :study_sessions, only: [:create]
  end
  resources :study_sessions, only: [:index, :show, :update] do
    patch "/update_duration", to: "study_sessions#update_duration", as: :update_duration
  end
  # get "/study_session/:id", to: "study_sessions#show", as: :study_session

  resources :topics, only: [:create, :destroy, :update]
end
