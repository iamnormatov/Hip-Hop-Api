Rails.application.routes.draw do
  resources :hiphops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'users#create'
  # Defines the root path route ("/")
  # root "articles#index"
  post '/auth/login', to: 'authentication#authenticate'

end
