Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'users/destroy'

  get 'users/index'

  get 'users/show'

  get 'sites/new'

  get 'sites/create'

  get 'sites/update'

  get 'sites/edit'

  get 'sites/destroy'

  get 'sites/index'

  get 'sites/show'

  get 'ab_tests/new'

  get 'ab_tests/create'

  get 'ab_tests/update'

  get 'ab_tests/edit'

  get 'ab_tests/destroy'

  get 'ab_tests/index'

  get 'ab_tests/show'

  devise_for :users, controllers: { sessions: 'users/sessions' }

      resources :sites
      resources :ab_tests

end
