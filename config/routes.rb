Rails.application.routes.draw do
  root'home#acceuil'
	get 'gossips/index'
  get 'home/new', to: 'home#new'
  post 'home/new', to: 'home#create'
  resources :gossips do 
    resources :comments
     end
  resources :sessions, only: [:new, :create, :destroy]
 
  get 'home/team'
   get 'home/contact'
  # get '/:id',to: 'gossip#show'
  
  #  get 'index/user_:id', to: 'gossips#user'
    get 'gossips/user/:id', to: 'gossips#user'
    get 'gossips/city/:id', to: 'gossips#city'
     
      
  # get 'index/:user_entry', to: 'gossip#index'
 
  # get 'gossips/:id/new', to: 'gossip#new_comment'
  #  post 'gossips/:id/new', to: 'gossip#create_comment'

  
  
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
