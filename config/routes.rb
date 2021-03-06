Rails.application.routes.draw do

  get  'couch_types/index'
  get 'couches/index'
  resources :puntuacions
  resources :couches
  resources :configurations do
    get :seleccionfechas, on: :collection
    get :usuariosregistrados, on: :collection
  end
  resources :couch_types

  resources :reservas do
    get :aceptar, on: :member
    get :rechazar, on: :member
    get :cancelar, on: :member
    get :visto, on: :member
  end 
  resources :premiums
  resources :consultas

  #devise_for :users
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions", :passwords => "passwords"}
  root 'couches#index'
  devise_scope :user do
    get '/users/show', to: 'registrations#show'
    get '/solicitudes', to:'registrations#missolicitudes'
    get '/misreservas', to: 'registrations#misreservas'
  end
  get '/couchinn', to: 'main#index'
  #get '/serPremium', to: 'premium#index'
  resources :premiums
  get '/puntuacion/recibidas', to: 'puntuacions#recibidas'
  get '/couch/reservas', to:'couches#indexreservas'
  get '/couch/estadias', to:'couches#indexestadias'

 # get '/configurations/registrados', to:'configurations#registrados'
 
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
