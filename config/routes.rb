ShitPedroSays::Application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  
  resources :shits

  root 'shits#index'

  get '/random' => 'shits#random'

end
