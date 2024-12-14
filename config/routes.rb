Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/api/test', to: 'application#test'
  resources :rooms, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end
