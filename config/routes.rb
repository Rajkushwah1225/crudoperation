Rails.application.routes.draw do
  get "model/index"
  get "model/new"
  get "article1/index"
  get "article1/new"
  root "employees#index"
  get "employ", to: "employees#show"
  resources :employees do
    resources :update
  end
  get "employees/:id", to: "employees#show"
end
