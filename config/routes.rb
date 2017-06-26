Rails.application.routes.draw do
 resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  resources :posts, except: [:show]
  
  get 'posts/*missing', to: 'posts#missing'
  
  root to: 'pages#home'
end
