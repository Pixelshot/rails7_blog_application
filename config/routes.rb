Rails.application.routes.draw do
  # First method of defining route
  get 'about', to: 'pages#about'

  # Second method of defining
  # get 'pages/about' 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # Uncomment code below to set any of the pages we have as our default page
  root "pages#home"
end
