Rails.application.routes.draw do
  resources :places, :except => [:new, :create, :update, :edit, :destroy] do
  	collection 	{ 	
  					post :tsv_import
  					get :display
  	 			}
  end

  root 'places#index'
end
