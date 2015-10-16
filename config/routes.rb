RealEstate::Application.routes.draw do
  root 'houses#index'
  resources :houses do
    resources :images
  end
end
