class AddStatusToAlumnosAndProyectos < ActiveRecord::Migration
  def change
    add_column :alumnos, :status, :boolean
    add_column :proyectos, :status, :boolean
  end
end
