Rails.application.routes.draw do
  resources :elevators
  resources :columns
  resources :quotes
  resources :batteries
  resources :employees
  resources :building_details
  resources :leads
  resources :buildings
  resources :customers
  resources :users
  resources :addresses
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  to: 'pages#index'

   get 'index' => 'pages#index'
   
   get 'residential' => 'pages#residential'
   
   get 'corporate' => 'pages#corporate'
  
   get 'quote' => 'pages#quote' 

   get 'login' => 'pages#login'

  resources :customers

end
