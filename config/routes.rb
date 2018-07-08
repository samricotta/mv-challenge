Rails.application.routes.draw do

  resources :influencers, only: :index do
      resources :starred_influencers, only: [:create]
    end

  resources :starred_influencers, only: [:destroy]

root to: 'influencers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
