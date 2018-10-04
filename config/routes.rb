Rails.application.routes.draw do
  root 'urls#index'

  # added :show to urls's resources
  resources :urls, only: [:index, :new, :create, :show]
end
