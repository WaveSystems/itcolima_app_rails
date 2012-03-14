class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string    :categoria
      t.string    :nombre
      t.string    :area_participacion
      t.text      :objetivo
      t.text      :innovacion
      t.text      :resultados_esperados
      t.integer   :numero_de_autores
      t.timestamps
    end
  end
end
