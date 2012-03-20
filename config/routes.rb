Creditflex::Application.routes.draw do

  resources :comments

  mount Ckeditor::Engine => '/ckeditor'

  resources :responses do
        member do
            post 'new'
		end
	end
  get "sessions/new"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  
  #get "/images/favicon.ico"
  resources :users
  resources :sessions

  resources :students

  resources :projects do
        member do
            #post 'new'
			end
	end
  resources :resources

  resources :users

  resources :teachers 
  #do
  #      member do
  #          post 'new'
	#		delete 'destroy'
#			end
#	end

  resources :portfolios

  resources :requests do
        member do
            post 'new'
			post 'show'
			get 'add_response'
			post 'add_response'
			get 'up_vote'
			post 'up_vote'
			end
		collection do
			
			get 'add_response'
			post 'add_response'
			end	
	end

  resources :proposals

  resources :proposal_types

  resources :proposal_statuses

  resources :subjects

  resources :courses do
        member do
            post 'new'
			end
		collection do
			get 'by_subject'
			end	
	end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
     match 'lycee' => 'lycee#index'
	 match 'lycee/credits' => 'lycee#credits'
	 match 'lycee/rigor' => 'lycee#rigor'
	 match 'signup_now' => 'users#new'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'lycee#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
