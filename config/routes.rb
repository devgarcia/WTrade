Rails.application.routes.draw do
  
  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"


  resources :products
  root "products#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
