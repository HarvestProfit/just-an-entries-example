Rails.application.routes.draw do
  resources :entries do
    resources :entry_items
  end
  resources :accounts
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
