Rails.application.routes.draw do
  resources :teachers
  root 'static_pages#home'
  get  '/signup',    to: 'teachers#new'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
