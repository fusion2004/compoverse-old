Rails.application.routes.draw do

  devise_for :users

  resources :rounds, only: :show

  resources :compos, only: :new

  root to: "index#index"

  namespace :admin do
    root to: "dashboard#index"
  end

end
