Rails.application.routes.draw do
  # GET /about
  get 'about', to: 'about#index'

  # passwords
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  # GET /sign_up
  get 'sign_up', to: 'registrations#new'
  # POST /sign_up
  post 'sign_up', to: 'registrations#create'

  # GET /sign_in
  get 'sign_in', to: 'sessions#new'
  # POST /sign_in
  post 'sign_in', to: 'sessions#create'

  # DELETE
  delete 'logout', to: 'sessions#destroy'

  # passwords
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  # omniauth
  get '/auth/twitter/callback', to: 'omniauth_callbacks#twitter'

  # GET /
  root to: 'main#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
