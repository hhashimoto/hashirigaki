Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
  end

  root 'scraps#index'

  get '/scraps', to: 'scraps#index'
  post '/scraps', to: 'scraps#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
