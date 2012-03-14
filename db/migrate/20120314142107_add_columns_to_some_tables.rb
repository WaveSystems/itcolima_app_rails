class AddColumnsToSomeTables < ActiveRecord::Migration
  def up
    add_column :alumnos, :curp, :string
    add_column :proyectos, :numero_asesores, :integer
  end

  def down
    remove_column :alumnos, :curp
    remove_column :proyectos, :numero_asesores
  end
end
