Rails.application.routes.draw do
  resources :teachers
  root 'static_pages#home'
  get  '/signup',    to: 'users#new'
  resources :users
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
