Rails.application.routes.draw do
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'layout#landing'
  get '/group' => 'pages#group'
  get '/author' => 'pages#author'
  get '/submission' => 'pages#submission'
end
