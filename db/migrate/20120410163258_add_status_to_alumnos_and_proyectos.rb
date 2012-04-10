class AddStatusToAlumnosAndProyectos < ActiveRecord::Migration
  def change
    add_column :alumnos, :finished, :boolean, :default => false
    add_column :proyectos, :finished, :boolean, :default => false
  end
end
