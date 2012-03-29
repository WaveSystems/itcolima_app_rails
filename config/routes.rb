ItcolimaAppRails::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :user, :path_names => { :sign_up => "register" }
  root :to => 'home#index'
  get '/registrations' => 'registrations#index', :as => :registrations
  get '/new_project' => 'registrations#new', :as => :new_project
  post '/create_project' => 'registrations#create', :as => :create_project
  get '/about' => 'home#about', :as => :about
  get '/contact' => 'home#contact', :as => :contact
end
