Rails.application.routes.draw do
  resources :items do
    member do
      post :increase_quantity
      post :decrease_quantity
      post :create
      delete :destroy
    end  
  end	  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  put 'api/nedt-portal/items/:id', to: 'items#update'
  get 'api/nedt-portal/items/:id', to: 'items#show' 
  post 'api/nedt-portal/authenticate', to: 'authentication#authenticate'
  post 'api/nedt-portal/items/create', to: 'items#create'
  delete 'api/nedt-portal/items/:id', to: 'items#destroy'
end
