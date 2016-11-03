ModelGen::Engine.routes.draw do
  resources :entities, only: [:new, :create]
  resources :relations, only: [:new, :create]
end
