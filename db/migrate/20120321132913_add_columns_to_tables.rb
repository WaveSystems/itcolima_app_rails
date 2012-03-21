class AddColumnsToTables < ActiveRecord::Migration
  def change
    add_column :alumnos, :asesor_id, :integer
    add_column :alumnos, :proyecto_id, :integer
    add_column :proyectos, :asesor_id, :integer
  end
end
