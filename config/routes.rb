ItcolimaAppRails::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :user, :path_names => { :sign_up => "register" }
  root :to => 'home#index'
  get '/registrations' => 'registrations#index', :as => :registrations
end
