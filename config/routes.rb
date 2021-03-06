Rails.application.routes.draw do

  # resources :tasks
  # Best practices to always use resources :tasks
  # this allows everyone to identify routes by following conventions.

  # Must know exactly how this code works because replaces all routing code below.
  # It gives the conventions that new and edit are immediately redirect_to by create.

  # be careful with sing/plur of all these references

  get '/tasks/new', to: 'tasks#new'
  #GET '/tasks/new': get the form to create a new task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # get 'tasks/edit' - to: get the form to edit an existing task

  get '/tasks/:id', to: 'tasks#show', as: :task # give name to path
  # GET '/tasks': get all your tasks - e.g GET '/tasks/33' get task with id=33

  get '/tasks', to: 'tasks#index'
  # get 'tasks/:id' to: 'tasks#show'

  post '/tasks', to: 'tasks#create'
  # post 'tasks/create'

  patch '/tasks/:id', to: 'tasks#update'
  # get 'tasks/update' - : update an existing task

  delete '/tasks/:id', to: 'tasks#destroy'
  # get 'tasks/destroy' - delete an existing task


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
