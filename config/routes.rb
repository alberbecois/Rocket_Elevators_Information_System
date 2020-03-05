Rails.application.routes.draw do
  root  to: 'pages#index' 

   get 'index' => 'pages#index'
   
   get 'residential' => 'pages#residential'
   
   get 'corporate' => 'pages#corporate'
  
   get 'quote' => 'pages#quote' 

   get 'login' => 'pages#login'

end
