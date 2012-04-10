class AddStatusToAlumnosAndProyectos < ActiveRecord::Migration
  def change
    add_column :alumnos, :finished, :boolean
    add_column :proyectos, :finished, :boolean
  end
end
