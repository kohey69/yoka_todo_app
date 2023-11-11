Rails.application.routes.draw do
  resources :projects, only: %i[new create]
  root "home#home"
end
