Rails.application.routes.draw do
  
  root to: 'dashboard#login'
  
  get '/login/:id',	to:'dashboard#landingPage'
  #get '/dashboard', to: 'dashboard#courseDashboard'

  #get 'show', to: 'dashboard#courseDashboard'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
