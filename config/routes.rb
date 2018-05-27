Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'live' => 'home#live_tenders'
  resources :tenders
  devise_for :users, :controllers => { registrations: "registrations",passwords: "passwords",sessions: "sessions"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
