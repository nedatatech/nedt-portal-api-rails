Rails.application.routes.draw do
  resources :items do
    member do
      post :increase_quantity
      post :decrease_quantity
      post :create
      get :destroy
    end  
  end	  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
end
