Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'stats', to: 'pages#stats'
  get 'students', to: 'pages#students'

  root to: "pages#stats"
end
