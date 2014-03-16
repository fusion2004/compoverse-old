Compo::Application.routes.draw do
  devise_for :users
  get 'error', to: 'index#error'
  root to: 'index#index'
end
