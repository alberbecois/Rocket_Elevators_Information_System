Rails.application.routes.draw do
  devise_for :user, :controllers => {registrations: 'registrations'}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) 
  devise_scope :user do
    get "register" => "devise/registrations#new"
    get "edit_profile" => "devise/registrations#edit"
    get "login" => "devise/sessions#new"
    get "logout" => "devise/sessions#destroy"
    end


  root  to: 'pages#index'

   get 'index' => 'pages#index'
   
   get 'residential' => 'pages#residential'
   
   get 'corporate' => 'pages#corporate'
  
   get 'quote' => 'pages#quote' 

   get 'login' => 'pages#login'

  resources :customers
  resources :user
end
