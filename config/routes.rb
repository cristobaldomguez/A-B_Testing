Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do

    authenticated :user do
      root 'sites#index', as: :authenticated_root
    end
    
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end 
  end 

  resources :sites do
    resources :ab_tests, only: [:index, :show]
  end

  get 'entry/startsettings'
  get 'entry/start'
end
