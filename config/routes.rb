Rails.application.routes.draw do
  
  resources :addresses
  resources :occupations
  resources :children
  resources :fathers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
