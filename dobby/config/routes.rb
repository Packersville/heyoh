Dobby::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end

  resources :users, :only => :show
  resources :weeks, :only => [:index, :edit, :update]
  resources :games, :only => [:index, :edit, :update]
  resources :users_lines, :only => [:index, :edit, :update]
  resources :admin, :only => :index
  root :to => "devise/sessions#new"
  
end
