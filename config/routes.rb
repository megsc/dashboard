Rails.application.routes.draw do
  get 'courseboard/landing'

  devise_for :users
  resources :coursecontents
  resources :courses, except: %i[index]

  devise_scope :user do
	   get 'login', to: 'devise/sessions#new' 
     delete 'logout', to: 'devise/sessions#destroy'
  end

	get 'login/:id', to: 'courseboard#landing', as: 'landing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
