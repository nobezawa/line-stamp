LineStamp::Application.routes.draw do
  namespace :api, defaults: {format: :json} do
    devise_for :users
    resources :users
    resources :projects
  end
  
  namespace :admin do
    resources :users
  end
  

  devise_for :users, :path => "user", only: [:sign_in, :sign_out, :session, :password]
  resources :users
  root :to => "home#index" 
end
