Dobby::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end

  resources :users, :only => :show
  resources :weeks, :only => :index do
    resources :games, :only => :index
  end
  root :to => "devise/sessions#new"
  
end
