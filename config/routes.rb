Rails.application.routes.draw do
  root 'scraps#index'

  get '/scraps', to: 'scraps#index'
  post '/scraps', to: 'scraps#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
