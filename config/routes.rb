Rails.application.routes.draw do

  get 'influencers/index'
  resources :influencers, only: :index do
   resources :starred_influencers, only: [:index, :create, :destroy]
 end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
