Rails.application.routes.draw do
  devise_for :controllers
  devise_for :users
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
