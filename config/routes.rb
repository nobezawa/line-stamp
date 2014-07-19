LineStamp::Application.routes.draw do
  resources :project_images

  root :to => "home#index"
  
  namespace :api, defaults: {format: :json} do
    devise_for :users
    resources :users
    resources :projects
  end
  
  namespace :admin do
    resources :users
  end
  

  devise_for :users, :path => "user", only: [:sign_in, :sign_out, :session, :password]
  resources :users do
    collection do
      get :upload
      get :project
      post :create_project
    end
  end

end
