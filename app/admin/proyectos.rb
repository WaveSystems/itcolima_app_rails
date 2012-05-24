ActiveAdmin.register Proyecto do
  filter :categoria
  filter :nombre

  index do |t|
    t.column :id
    t.column :nombre
    t.column :categoria
    t.column :area_participacion
    t.column "Alumnos" do |proyecto|
      proyecto.alumnos_proyecto
    end
    t.column "Asesores" do |proyecto|
      proyecto.asesores_proyecto
    end
    default_actions
  end

  csv do |t|
    t.column :id
    t.column :nombre
    t.column :categoria
    t.column :area_participacion
    t.column("Alumnos") { |proyecto| proyecto.alumnos_proyecto }
    t.column("Asesores") { |proyecto| proyecto.asesores_proyecto }
  end
  
end
