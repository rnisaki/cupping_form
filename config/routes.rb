Rails.application.routes.draw do
	resources :cuppings, only: [:create, :show, :index, :edit, :new, :update]
	resources :users, only: [:show, :index, :edit]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
