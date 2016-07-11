Rails.application.routes.draw do
  root 'welcome#index'
  get 'signup'  => 'users#new' 
  resources :users
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
  resources :sessions

  namespace :admin do
    resources :tasks
  end
  get 'admin' => 'admin/welcome#index'
end
