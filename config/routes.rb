Rails.application.routes.draw do
  resources :admins
  resources :rewards
  resources :bug_requests
  # devise_for :hunters
  # devise_for :companies
  get "projectsbycompanyid/index"
  get "projectsbycompanyid/show"
  resources :hunters
  resources :projects
  resources :companies

  # "ninho" para as rotas de empresa, projeto e os bugrequest (NÃO É O ACONSELHADO UTILIZAR MAS DEVIDO AO TEMPO TA OTIMO!)
  resources :companies do
    resources :projects do
      resources :bug_requests
    end
  end      

  # Todos os bugrequest de um projeto especifico
  resources :projects do 
    resources :bug_requests
  end

  resources :hunters do 
    resources :bug_requests
  end

  # rotas de autenticação 
  post "sessions/company", to: "sessions#company"
  post "sessions/bughunter", to: "sessions#bughunter"

  # namespace :sessions do
  #   resources :company, :bughunter
  # end
  # resources :sessions, only: [:company, :bughunter]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
