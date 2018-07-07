Rails.application.routes.draw do

   resources :influencers, only: :index
   resources :starred_influencers, only: [:index, :create, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
