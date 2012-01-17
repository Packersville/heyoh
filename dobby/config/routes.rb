Dobby::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end

  resources :users, :only => :show
  resources :games, :only => [:index, :create, :edit]
  resources :admin, :only => :index
  resources :create_games, :only => [:index, :edit, :update]
  root :to => "devise/sessions#new"
  
end
