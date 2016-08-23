Rails.application.routes.draw do
    devise_for :users
  #devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  #devise_for :users, :controllers => {:sessions => "sessions", :registrations => "registrations",:omniauth_callbacks => "users/omniauth_callbacks"}
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => 'registrations'}
  
  #resources :products, :except => [:new]  do
  resources :products do
  	member do
  		get "like", to: "products#upvote"
  		get "dislike", to: "products#downvote"
  	end
  	resources :comments
  end


#resources :staffs, :except => [:new] do
resources :staffs do
  	member do
  		get "like", to: "products#upvote"
  		get "dislike", to: "products#downvote"
  	end
  	resources :reviews
  end



  root 'products#index'
  #root 'staffs#index'

match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]

  
end
