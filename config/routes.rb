ItcolimaAppRails::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :user, :path_names => { :sign_up => "register" }
  root :to => 'home#index'

  post '/asesors' => 'asesors#index', :as => :asesors

  get '/registrations' => 'registrations#index', :as => :registrations
  get '/new_project' => 'registrations#new', :as => :new_project
  post '/create_project' => 'registrations#create', :as => :create_project

  get '/edit_project/:id' => 'registrations#edit', :as => :edit_project
  put '/update_project/:id' => 'registrations#update', :as => :update_project

  get '/edit_alumnos/:id' => 'registrations#edit_alumnos', :as => :edit_alumnos
  get '/edit_alumno/:id' => 'registrations#edit_a', :as => :edit_a
  put '/update_alumno/:id' => 'registrations#update_a', :as => :update_a

  get '/edit_asesores/:id' => 'registrations#edit_asesores', :as => :edit_asesores
  get '/edit_asesor/:id' => 'registrations#edit_asesor', :as => :edit_asesor
  put '/update_asesor/:id' => 'registrations#update_asesor', :as => :update_asesor

  get '/new_project/:proyecto_id/alumnos' => 'registrations#search_for_alumnos', :as => :search_for_alumnos
  post '/new_project/:proyecto_id/alumnos/edit' => 'registrations#edit_alumno', :as => :edit_alumno
  put '/new_project/:proyecto_id/alumnos/update' => 'registrations#update_alumno', :as => :update_alumno

  get '/new_project/:proyecto_id/new_asesor' => 'registrations#new_asesor', :as => :new_asesor
  post '/new_project/:proyecto_id/create' => 'registrations#create_asesor', :as => :create_asesor
  get '/new_project/:proyecto_id/add_asesor/:asesor_id' => 'registrations#add_asesor', :as => :add_asesor

  get '/about' => 'home#about', :as => :about
  get '/contact' => 'home#contact', :as => :contact
end
