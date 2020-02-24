Rails.application.routes.draw do
  get 'welcome/index'
  resources :categories
  resources :lists do
    resources :tokens
  end
  root 'lists#index'
end
