Rails.application.routes.draw do
  root 'emails#index'
  resources :emails, only: [:new, :create]
  resources :static_pages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
