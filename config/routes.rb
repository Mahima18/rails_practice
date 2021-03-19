Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # resources encapsulates all the popular routes that applications use
  # it contains all types of routes not just one. 
  # like blogs/:id/edit etc
  # check using rails routes command in terminal
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
