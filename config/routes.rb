Rails.application.routes.draw do
  devise_for :users
  resources :events
  root 'dashboard#index'
  namespace :api do
    resources :events, only: [:index, :create, :destroy, :update] do
      get :search, on: :collection
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
