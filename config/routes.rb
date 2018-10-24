Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular' #Kept as demo to show how easy it is to scope and show items
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # Setting home page as the root for the application
  root to: 'pages#home'
end
