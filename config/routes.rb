Rails.application.routes.draw do
  resources :bug_requests
  resources :hunters
  resources :projects
  resources :companies

  resources :companies do 
    resources :projects 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
