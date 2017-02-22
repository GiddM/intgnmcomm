Rails.application.routes.draw do
  resources :profiles
  resources :moneyposts
  resources :gposts
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lander#index'
  get 'lander/payment'
end
