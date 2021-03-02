Rails.application.routes.draw do
  get 'pokemons/new'
  get 'pokemons/index'
  get 'pokemons/show'
  get 'pokemons/create'
  devise_for :users
  root to: 'pokemons#index'
  resources :pokemons, only: [:index, :new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
