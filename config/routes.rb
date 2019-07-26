Rails.application.routes.draw do
  devise_for :users
	root 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :show

  resources :places do
    	resources :comments, only: :create
        resources :photos, only: :create	
        root to: 'photos#create'
    end
    resource :users, only: :show
end
