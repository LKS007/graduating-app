Rails.application.routes.draw do
  root 'welcome#index'
  get 'signup'  => 'users#new' 
  resources :users
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  resources :sessions
  resources :tasks

  namespace :admin do
    resources :tasks
  end
  get 'admin' => 'admin/welcome#index'
end
