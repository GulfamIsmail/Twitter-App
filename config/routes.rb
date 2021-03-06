Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'users/new'
  root :to => 'static_pages#home'
  
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'signup' => 'users#new'
  get  'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


  resources :users

  resources :account_activations, only: [:edit]
  resources :password_resets,
only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
