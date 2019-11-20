Rails.application.routes.draw do
  resources :bug_requests
  # devise_for :hunters
  # devise_for :companies
  get "projectsbycompanyid/index"
  get "projectsbycompanyid/show"
  resources :hunters
  resources :projects
  resources :companies

  resources :companies do
    resources :projects
  end
  post "sessions/company", to: "sessions#company"
  post "sessions/bughunter", to: "sessions#bughunter"

  # namespace :sessions do
  #   resources :company, :bughunter
  # end
  # resources :sessions, only: [:company, :bughunter]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
