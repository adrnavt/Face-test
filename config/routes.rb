Cinema::Application.routes.draw do
  get "welcome/index"

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  resources :movies do
    resources :reviews
  end
  root to: 'welcome#index'
end
