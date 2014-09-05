Rails.application.routes.draw do
  resources :participantes

  resources :nombrepartidobs

  resources :pbaloncestos

  resources :nombrepartidos

  resources :albums do
    resources :galleries
  end
  resources :pfutbols

  resources :events

  get 'roadtosports/registros'

  get 'roadtosports/index'

  get 'roadtosports/acerca'

  get 'roadtosports/contacto'

  resources :integrantes

  resources :sports do
    resources :teams
  end
  
  resources :sports do
    resources :participantes
  end

  resources :tournaments do
    resources :teams
  end

  resources :teams do
    resources :integrantes
  end

  resources :teams

resources :user_sessions
resources :users

get 'login' => 'user_sessions#index', :as => :login
get 'logout' => 'user_sessions#destroy', :as => :logout

  resources :galleries

  get 'tipos_config/index'

  resources :sports

  resources :tournaments

  resources :sessions

  resources :novelties

  resources :rules

  resources :activities

  resources :modalities_types

  resources :type_rules

  resources :type_tournaments

  resources :document_types

  get 'usuario/index'

  match '/home', to: 'static_pages#home',  via: 'get'
  match '/help',    to: 'static_pages#help',  via: 'get'
  match '/about',   to: 'static_pages#about',  via: 'get'
  match '/contact', to: 'static_pages#contact',  via: 'get'

  root :to => 'inicio#index'



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
