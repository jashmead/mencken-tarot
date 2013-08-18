Mt::Application.routes.draw do
  ## we expect a "comments" table, to get:  discussion forums & also philosophical inquiries
  resources :plays

  ## readings will get:  take a reading, build a reading, send a reading, how to do a reading, how to interpret
  resources :readings

  resources :positions

  resources :spreads

  resources :cards

  ## decks will get:  favorites, recent, popular, mencken
  resources :decks

  ## people will get status of: anonymous, mencken, admin, registered, & subscriber
  resources :people

  # maybe we want a Mencken page
  get "static_pages/about"
  get "static_pages/contact"
  get "static_pages/help"
  # history of Tarot
  get "static_pages/history"  ## complex page
  # add in "history of mencken"
  get "static_pages/plans"    ## low priority, may eliminate
  get "static_pages/splash"

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

  root to: "static_pages#splash"

end
