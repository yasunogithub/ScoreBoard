Rails.application.routes.draw do
  get 'scores/index'

  resources :scores do
    resources :results
  end
  get 'scores/new'
  root 'scores#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
