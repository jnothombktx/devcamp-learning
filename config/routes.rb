Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  # Setting home page as the root for the application
  root to: 'pages#home'
end
