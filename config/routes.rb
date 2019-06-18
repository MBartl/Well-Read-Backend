Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :favorites
      resources :books, only: [:create, :destroy]
      get "/favorites", to: "users#favorites"
			get "/auto_login", to: "auth#auto_login"
      post "/login", to: "auth#login"
    end
  end
end
