Rails.application.routes.draw do
  devise_for :users
	#resources :users
  
  devise_scope :user do
	   get 'login', to: 'devise/sessions#new' 
     delete 'logout', to: 'devise/sessions#destroy'
  end

	get 'login/:id', to: 'dashboard#landingPage', as: 'landing'

	#delete 'logout', to: 'dashboard#destroy' 


  #root to: 'dashboard#landingPage'
  
  #get '/login/:id',	to:'dashboard#landingPage'
  #get '/dashboard', to: 'dashboard#courseDashboard'

  #get 'show', to: 'dashboard#courseDashboard'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
