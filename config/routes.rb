Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :potatoe_prices, only: [:index] 
      get '/potatoe_prices/maximal_gain', to: 'potatoe_prices#maximal_gain', as: 'maximal_gain'
    end
  end
end
