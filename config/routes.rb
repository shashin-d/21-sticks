Rails.application.routes.draw do
  mount GovukPublishingComponents::Engine, at: "/component-guide" if Rails.env.development?

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sticks#new_game"
  get '/sticks/index', "sticks#index"
  post 'sticks/userinput', "sticks#userinput"
  get 'sticks/new_game', "sticks#new_game"
end
