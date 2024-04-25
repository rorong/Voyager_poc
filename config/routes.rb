Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations"
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  root to: "dashboards#index"
  resources :roles
  resources :teams do
    resources :team_users, only: [:create]
  end
  resources :users, path: "admin_user" # Rename the conflicting route to 'admin_user'
  resources :add_member_in_teams, only: [:create]
end
