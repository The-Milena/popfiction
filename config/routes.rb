Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :places do
    resources :bookings, only: [:new, :create]
  end


    resources :bookings, only: [:destroy, :edit, :update, :show]
    patch "bookings/:id/accept", to: "bookings#accept", as: :accept
    patch "bookings/:id/add_car", to: "bookings#add_car", as: :add_car
    patch "bookings/:id/refuse", to: "bookings#refuse", as: :refuse
    get "users/dashboard", to: "pages#dashboard", as: :dashboard
end
