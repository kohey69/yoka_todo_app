Rails.application.routes.draw do
  resources :projects, only: %i[show new create edit update destroy] do
    resources :tasks, only: %i[create]
  end
  root "home#home"
end
