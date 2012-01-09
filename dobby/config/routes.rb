Dobby::Application.routes.draw do
  devise_for :users do
    root :to => "devise/sessions#new"
  end

  root :to => "devise/sessions#new"
end
