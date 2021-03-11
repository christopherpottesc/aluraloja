Rails.application.routes.draw do
  resources :departamentos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "produtos", to: "produtos#index"
  root to: "produtos#index"

  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  # get "produtos/new", to: "produtos#new"
  # post "produtos", to: "produtos#create"
  # delete "produtos/:id", to: "produtos#destroy", as: :produto

  get "produtos/buscar", to: "produtos#busca", as: :busca_produto
end
