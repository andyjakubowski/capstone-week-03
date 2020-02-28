Rails.application.routes.draw do
  get 'welcome/index'
  resources :categories
  resources :spaces, shallow: true do
    resources :lists do
      resources :tokens
    end
  end
  root 'lists#index'
end
