Rails.application.routes.draw do
	root 'home#acceuil'
	get 'home/acceuil'
  get 'home/team'
  get 'home/contact'
   get 'acceuil/gossip_:id', to: 'home#gossip'
     get 'home/gossip_:id', to: 'home#gossip'
     get '/gossi_:id', to: 'home#gossip'
  get 'acceuil/:user_entry', to: 'home#acceuil'
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
