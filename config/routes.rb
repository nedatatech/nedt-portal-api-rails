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
  put 'items/:id', to: 'items#update'
  get 'items/:id', to: 'items#show' 
  post 'authenticate', to: 'authentication#authenticate'
  post 'items/create', to: 'items#create'
  delete 'items/:id', to: 'items#destroy'
end
