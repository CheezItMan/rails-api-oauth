# https://github.com/lynndylanhurley/devise_token_auth/issues/777
require "devise_token_auth"

Rails.application.routes.draw do
  mount_devise_token_auth_for "User", at: "auth", controllers: {
    omniauth_callbacks: "overrides/omniauth_callbacks",
  }

  # get '/omniauth/google_oauth2/callback', to: 'sessions#create', as: 'create_user'
  # get '/omniauth/google', to: 'sessions#create'

  get '/user/login', to: 'sessions#create', as: 'login'

  # delete '/logout', to: 'sessions#destroy', as: 'logout'

  # get 'omniauth/:provider', to: ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
