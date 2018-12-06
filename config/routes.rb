Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"
  resources :users
  get "users/index"
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end