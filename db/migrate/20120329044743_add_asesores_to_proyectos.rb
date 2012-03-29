class AddAsesoresToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :numero_asesores, :integer
  end
end
