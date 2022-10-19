Rails.application.routes.draw do

  resources :potatoe_prices, only: [:index]
end
