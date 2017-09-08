Rails.application.routes.draw do

  root to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :questions do
    resources :answers
  end
  resource :users
end
