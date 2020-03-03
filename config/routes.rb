Rails.application.routes.draw do
  resources :categories
  resources :spaces, except: [:new, :edit, :update], param: :slug, shallow: true do
    resources :lists, except: [:index] do
      resources :tokens, except: [:index, :new, :show]
    end
  end
  root 'home#show'
  get ':slug', to: 'spaces#show'
end
