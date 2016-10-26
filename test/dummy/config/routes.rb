Rails.application.routes.draw do
  mount ModelGen::Engine => "/model_gen"
end
