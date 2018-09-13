Rails.application.routes.draw do
  resources :users
  resource :sessions
  resources :bands do
    resources :albums, only: :new
  end

  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
