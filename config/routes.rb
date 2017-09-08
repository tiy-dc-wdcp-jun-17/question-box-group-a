Rails.application.routes.draw do


  get 'tags/index'

  root to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :questions do
    resources :answers
  end
  resource :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
