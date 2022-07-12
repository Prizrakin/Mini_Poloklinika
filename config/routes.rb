Rails.application.routes.draw do
  resources :recommendations
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) rescue ActiveAdmin::DatabaseHitDuringLoad
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homes#index"
   get 'recommendation/all' => 'recommendations#all'
   resources :profiles  
   resources :users, shallow: true do
    resources :receptions, shallow: true do
      resources :recommendations, shallow: true do
      
      end
    end
   end
end
