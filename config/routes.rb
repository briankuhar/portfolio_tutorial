Rails.application.routes.draw do
  resources :portfolio_items, except: [:show]
  get 'portfolio_item/:id', to: 'portfolio_items#show', as: 'portfolio_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  
  root to: 'pages#home'
end
