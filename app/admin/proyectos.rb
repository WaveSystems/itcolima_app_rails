ActiveAdmin.register Proyecto do
  filter :categoria
  filter :nombre

  index do |t|
    t.column :id
    t.column :nombre
    t.column :categoria
    t.column :area_participacion
    t.column :numero_de_autores
    t.column :numero_asesores
    default_actions
  end
  
end
