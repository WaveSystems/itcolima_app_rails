class CreateAlumnoProyectos < ActiveRecord::Migration
  def change
    create_table :alumno_proyectos do |t|
      t.integer :alumno_id
      t.integer :proyecto_id
      t.timestamps
    end
    remove_column :alumnos, :proyecto_id
    remove_column :alumnos, :finished
  end
end
