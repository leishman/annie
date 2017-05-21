Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  namespace :api do
    resources :guns, only: [:index]
  end

  get '/feed', to: 'feed#show', as: 'feed'
  get '/more', to: 'more#show', as: 'more'
  resources :users, only: [:show] do
    resources :targets
  end
end
