TeamProject::Application.routes.draw do
  
  resources :game_details

  resources :statuses

  resources :games

  resources :questions

  resources :levels

  resources :game_moves

  resources :game_types

  resources :challenges

  get "challenge/level"
  get "challenge/question"
  get "challenge/question/:level", to: 'challange/question#show', as: 'question_level'
  get "challenge/answer"
  get "challenge/answer/:guess", to: 'challange/answer#guess', as: 'guess'
  get "challenge/solution"
  get "introduction/scenario"
  get "introduction/starting"
  get "introduction/information"
  get "introduction/resources"
  get "join/index"
  get "admin/index"
  devise_for :users
  root 'introduction#scenario', as: 'scenario'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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
