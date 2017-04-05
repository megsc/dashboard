Rails.application.routes.draw do
  devise_for :users
	#resources :users
  
	#get 'login', to: 'dashboard#login' 

	#post 'login', to: 'dashboard#landingPage'

	#delete 'logout', to: 'dashboard#destroy' 


  root to: 'dashboard#landingPage'
  
  #get '/login/:id',	to:'dashboard#landingPage'
  #get '/dashboard', to: 'dashboard#courseDashboard'

  #get 'show', to: 'dashboard#courseDashboard'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
