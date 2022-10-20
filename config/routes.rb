Rails.application.routes.draw do

  resources :potatoe_prices, only: [:index] 
  get '/potatoe_prices/maximal_gain', to: 'potatoe_prices#maximal_gain', as: 'maximal_gain'
end
