Rails.application.routes.draw do
  # devise_for :companies
  get "projectsbycompanyid/index"
  get "projectsbycompanyid/show"
  resources :hunters
  resources :projects
  resources :companies

  resources :companies do
    resources :projects
  end
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
