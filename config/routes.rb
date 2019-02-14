Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :summary, only: [:index]
  resources :students, only: [:index]

  root to: "summary#index"
end
