Rails.application.routes.draw do
  devise_for :users ,controllers: {
  	registrations: 'users/registrations',
  	sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 
  devise_scope :user do  	
  	root to: "devise/registrations#new"
  end

  resources :users do 
    member do
  		get :dashboard 
      get  :profile
    end
  end
end
