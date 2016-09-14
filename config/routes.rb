Rails.application.routes.draw do
  root 'static_pages#home'
  get	 '/signup',    to: 'teachers#new'
  get	 '/login',	   to: 'sessions#new'
  get	 '/list',	   to: 'teachers#index'
  post	 '/login',	   to: 'sessions#create'
  delete '/logout',    to: 'sessions#destroy'
  resources :teachers
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
