Rails.application.routes.draw do
  resources :calculations
  post 'show', to: 'calculations#show'
  root to: 'calculations#index'
end
