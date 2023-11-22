Rails.application.routes.draw do
  resources :projects, only: %i[new create show]
  root "home#home"
end
