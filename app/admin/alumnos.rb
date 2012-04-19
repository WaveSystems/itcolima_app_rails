ActiveAdmin.register Alumno do
  filter :proyecto_id, :as => :select, :collection => Proyecto.proyectos
  filter :no_control
  filter :nombre
  filter :apellido_paterno
  filter :apellido_materno
  
  index do |t|
    t.column :no_control
    t.column :apellido_paterno
    t.column :apellido_materno
    t.column :nombre
    default_actions
  end
end
