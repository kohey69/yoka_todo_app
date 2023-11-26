Rails.application.routes.draw do
  resources :projects, only: %i[new create show] do
    resources :tasks, only: %i[create]
  end
  root "home#home"
end
