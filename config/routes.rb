Rails.application.routes.draw do
  resources :relationships
  get 'welcome/index'

  root 'welcome#index'

  devise_for :users, controllers: { account_update: "users/registrations", sign_up:"users/registrations" }

  resources :users do 
    member do
      get :following, :followers
    end
  end
end
