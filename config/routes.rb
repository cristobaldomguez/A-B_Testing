Rails.application.routes.draw do
  devise_for :users
      resources :sites
      resources :ab_tests

end
