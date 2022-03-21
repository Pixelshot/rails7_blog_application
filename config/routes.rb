Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :posts
  # First method of defining route
  # get 'about', to: 'pages#about'

  # # Second method of defining
  get 'pages/about'

  get '/u/:id', to: 'users#profile', as: 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # Uncomment code below to set any of the pages we have as our default page
  root 'pages#home'
end
