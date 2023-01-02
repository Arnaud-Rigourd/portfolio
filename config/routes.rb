Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "myportfolios#index"

  resources :myportfolios, only: [:index]
  resources :projects, only: [:new, :create, :edit, :update, :destroy] do
    collection do
      post :sort
    end
  end
  resources :stacks, only: [:new, :create, :edit, :update, :destroy] do
    collection do
      post :sort
    end
  end
end
