Dobby::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end

  root :to => "devise/sessions#new"
end
