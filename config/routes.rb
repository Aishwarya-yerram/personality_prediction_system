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
  resources :questions do 
    collection do 
      get :test 
    end
  end
  resources :jobs
  resources :uploads do 
    member do 
      get :pdf_reader
    end
  end
  resources :categories
  resources :skills
end
