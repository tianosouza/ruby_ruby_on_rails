Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  get "up" => "rails/health#show", as: :rails_health_check

   # Rotas aplicadas para fins de estudo
   root "home#index"
   
end
