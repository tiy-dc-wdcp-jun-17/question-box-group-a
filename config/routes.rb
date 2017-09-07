Rails.application.routes.draw do


  get 'answers/show'

  get 'answers/create'

  get 'answers/edit'

  root to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :questions
  resource :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
