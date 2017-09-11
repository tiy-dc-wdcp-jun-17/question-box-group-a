Rails.application.routes.draw do



  post '/search', :to => 'search#create'


  get '/tags', :to => 'tags#index'
  root to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :questions do
    resources :answers
  end



  resource :users
end
