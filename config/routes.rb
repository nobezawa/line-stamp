LineStamp::Application.routes.draw do
  namespace :api, defaults: {format: :json} do
    devise_for :users
    resources :users
    resources :projects
  end
  root :to => "home#index" 
end