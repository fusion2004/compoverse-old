ThaSauceCompo::Application.routes.draw do
  devise_for :users
  root to: "index#index"

  namespace :admin do
    root to: "dashboard#index"
  end
end
