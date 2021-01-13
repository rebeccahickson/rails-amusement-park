Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'

  resources :rides
  resources :attractions
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
