Rails.application.routes.draw do
  root 'home#index'
  resources :usuarios
  resources :filmes
  resources :generos
end
