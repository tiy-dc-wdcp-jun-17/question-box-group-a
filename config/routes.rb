Rails.application.routes.draw do


  resources :questions
  resource :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
