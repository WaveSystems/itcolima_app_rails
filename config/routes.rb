ItcolimaAppRails::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :user, :path_names => { :sign_up => "register" }
  root :to => 'home#index'
  get '/registrations' => 'registrations#index', :as => :registrations
  get '/new_project' => 'registrations#new', :as => :new_project
  post '/create_project' => 'registrations#create', :as => :create_project

  get '/new_project/:proyecto_id/alumnos' => 'registrations#search_for_alumnos', :as => :search_for_alumnos
  post '/new_project/:proyecto_id/alumnos/edit' => 'registrations#edit_alumno', :as => :edit_alumno
  put '/new_project/:proyecto_id/alumnos/update' => 'registrations#update_alumno', :as => :update_alumno

  get '/new_project/:proyecto_id/new_asesor' => 'registrations#new_asesor', :as => :new_asesor
  post '/new_project/:proyecto_id/create' => 'registrations#create_asesor', :as => :create_asesor

  get '/about' => 'home#about', :as => :about
  get '/contact' => 'home#contact', :as => :contact
end
