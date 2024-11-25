Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

   # Rotas aplicadas para fins de estudo
   root "home#index"
   get "home", controller: "home", action: "index" # Rota para a página inicial ou seja a action index do controller home
   get "home2", to: "home#index" # Rota para a página inicial ou seja a action index do controller home

   # Exercicio 01 ./exercicios/exercicio-01.md
   get "estudantes", to: "estudantes#index", as: :estudantes # Rota para a página inicial ou seja a action index do controller estudantes
end
