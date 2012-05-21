class CreateAsesorProyectos < ActiveRecord::Migration
  def change
    create_table :asesor_proyectos do |t|
      t.integer  :asesor_id
      t.integer  :proyecto_id
      t.timestamps
    end
  end
end
