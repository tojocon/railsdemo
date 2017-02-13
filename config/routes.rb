Rails.application.routes.draw do
  resources :post_to_databases
  get 'bootstrap_demo/index'

  get 'react_demo/index'

  get 'run/index'
  root 'run#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
