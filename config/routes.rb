Rails.application.routes.draw do
  resources :entries
  resources :accounts
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
