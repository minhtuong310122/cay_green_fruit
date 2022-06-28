Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "home#index"
    get "signup", to: "users#new"
    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
    resources :categories, only: :show
    resources :users

    namespace :admin do 
      root "home#index"
      
      resources :categories
      resources :products
    end
  end
end
