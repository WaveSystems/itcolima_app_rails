class RemoveAsesorColumnFromAlumnos < ActiveRecord::Migration
  def up
    remove_column :alumnos, :asesor_id
    remove_column :proyectos, :asesor_id
    add_column :asesors, :proyecto_id, :integer
  end

  def down
  end
end
