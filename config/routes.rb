Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

      resources :sites
      resources :ab_tests

end
