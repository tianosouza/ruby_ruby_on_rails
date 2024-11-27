Rails.application.routes.draw do
  root 'welcome#index'
  post 'adicionar_produto', to: 'welcome#adicionar_produto'
  get 'users/cadastro', to: 'users#cadastro'
  post 'users/confirmacao', to: 'users#confirmacao'
end
