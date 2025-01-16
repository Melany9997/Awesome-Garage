Rails.application.routes.draw do

  resources :cars, only: [:index, :show]

  # get 'cars' to: 'cars/index'

end
