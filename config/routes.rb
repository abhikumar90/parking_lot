Rails.application.routes.draw do
  get 'parking_slot/index'

  get 'parking_slot/create'

  #get 'cars/index'

  #get 'cars/create'
 get "cars/:id/parking_slot/new" => "parking_slot#new"

  resources :cars
  resources :parking_slot

  get "enter_park" => "cars#new", :as => "new_car_path"

  get "exit_park" => "cars#index", :as => "cars_path"
  post "/cars/new" => "cars#create"

  get '/exiting_parking' => "cars#exiting_parking"
  post "cars/exit_parking" => "cars#exit_parking"
  post "/reg_no_with_color" => "cars#reg_no_with_color"
  post "/slot_no_parking_car" => "cars#slot_no_parking_car"
  post "/slot_no_car_color" => "cars#slot_no_car_color"

  post "/parking_slot/new" => "parking_slot#create"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cars#index'

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
