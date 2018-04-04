Rails.application.routes.draw do
  devise_for :users ,controllers: {
  	registrations: 'users/registrations',
  	sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   
  devise_scope :user do  	
  	root to: "devise/registrations#new"
  end
  # get 'users/adminDashBoard', to: 'users#adminDashBoard'
  resources :users do 
    member do
      get :adminDashBoard
  		get :dashboard 
      get :profile

    end
  end
  resources :questions
end
