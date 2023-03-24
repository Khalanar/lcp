Rails.application.routes.draw do
  resources :band_members
  get 'home/index'
  get '', to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
