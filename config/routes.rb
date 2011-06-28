Kb::Engine.routes.draw do

  resources :sections do
    resources :articles
  end

  root :to => 'sections#index'

  namespace :admin do
    resources :sections do
      resources :articles
    end
  end

end