Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  scope :api do
    scope :v1 do
      resources :users, only: [:update, :destroy]
        post "/signup", to: "users#create"
        get "/me", to: "users#show"
        post "/signin", to: "sessions#create"
        delete "/signout", to: "sessions#destroy"
      resources :hikes, except: [:update, :destroy]
      resources :plans
    end
  end

end
