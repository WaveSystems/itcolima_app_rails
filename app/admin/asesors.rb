ActiveAdmin.register Asesor do
  filter :nombre
  filter :apellido_paterno
  filter :apellido_materno
  filter :email
  filter :proyecto_id, :as => :select, :collection => proc { Proyecto.proyectos }

  index do |t|
    t.column :id
    t.column :nombre
    t.column :apellido_paterno
    t.column :apellido_materno
    t.column :nivel_academico
    t.column :titulo
    t.column :tipo_asesor
    default_actions
  end
end
