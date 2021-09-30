Rails.application.routes.draw do
  # GET /about
  get 'about', to: 'about#index'

  # GET /sign_up
  get 'sign_up', to: 'registrations#new'

  # POST /sign_up
  post 'sign_up', to: 'registrations#create'

  # DELETE
  delete 'logout', to: 'sessions#destroy'

  # GET /
  root to: 'main#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
