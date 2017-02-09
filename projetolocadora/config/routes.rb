Rails.application.routes.draw do
  root 'home#index'
  resources :categorias
end
