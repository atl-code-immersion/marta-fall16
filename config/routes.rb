Rails.application.routes.draw do
	
  get 'train_tracker' => 'train_tracker#index'

  resources :locations

  root 'locations#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
