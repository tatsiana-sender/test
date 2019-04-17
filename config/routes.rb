Rails.application.routes.draw do
  root 'projects#index', as: 'home'
  resources :projects do
    resources :tasks
  end
  
end
