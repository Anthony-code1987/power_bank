Rails.application.routes.draw do
  devise_for :users
  root to: "powerbanks#index"
  get "profile", to: "pages#profile"
  resources :pages do
    patch "accept", to: "reservations#accept", as: "reservation_accepted"
    patch "decline", to: "reservations#decline", as: "reservation_decline"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :powerbanks, except: :index do
    resources :reservations, only: [:create, :edit, :show]
  end
  resources :reservations, only: [:destroy, :index]
end
