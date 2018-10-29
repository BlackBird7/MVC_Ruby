Rails.application.routes.draw do
  resources :detalle_ordens
  resources :registro_ordens
  resources :productos
  resources :clientes
  #get 'hello/index'
  #get 'hello/saludo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'hello#index'
  match 'saludo', :to => 'hello#saludo', :via => [:get]
end
