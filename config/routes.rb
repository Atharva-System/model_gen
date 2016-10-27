ModelGen::Engine.routes.draw do
  resources :entities, only: [:new, :create]
end
