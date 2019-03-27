Rails.application.routes.draw do
  get 'admin/sign_in'
  # devise_for :users, controllers: { sessions: 'sessions' }
  devise_scope :user do
    post 'admin/sing_in', to: 'sessions#create'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
