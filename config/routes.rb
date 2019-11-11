Rails.application.routes.draw do
  # devise_for :models
  get 'projectsbycompanyid/index'
  get 'projectsbycompanyid/show'
  resources :hunters
  resources :projects
  resources :companies
  
  resources :sessions, only: [:create, :destroy]

  resources :companies do 
    resources :projects 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
