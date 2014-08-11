Rails.application.routes.draw do
resources :user_sessions
resources :users

get 'login' => 'user_sessions#new', :as => :login
get 'logout' => 'user_sessions#destroy', :as => :logout

  resources :galleries

  get 'tipos_config/index'

  resources :sports

  resources :pre_registrations

  resources :matches

  resources :scores

  resources :teams

  resources :fch_lg_matches

  resources :modalities

  resources :tournaments

  resources :acceptances

  resources :preferences

  resources :sessions

  resources :information

  resources :novelties

  resources :constituents

  resources :rules

  resources :configurations

  resources :activities

  resources :modalities_types

  resources :type_rules

  resources :type_tournaments

  resources :type_preferences

  resources :type_configurations

  resources :type_informations

  resources :new_types

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
