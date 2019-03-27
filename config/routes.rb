Rails.application.routes.draw do
  # devise_for :users, controllers: { sessio  ns: 'sessions' }
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { sessions: 'sessions' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
