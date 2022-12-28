Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "myportfolios#index"

  resources :myportfolios, only: [:index] do
    resources :projects, only: [:new, :create, :edit, :update, :destroy]
  end

end
