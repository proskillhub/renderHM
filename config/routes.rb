Rails.application.routes.draw do
<<<<<<< HEAD
  
=======
  get 'room_types/index'
>>>>>>> 54e003a21484b5bfa2ea6bcab4a35358bb11eb7b
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :hotels
  resources :employee_details
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :room_types
  resources :room_details
end
