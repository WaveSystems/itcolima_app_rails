class CreateAsesors < ActiveRecord::Migration
  def change
    create_table :asesors do |t|
      t.string    :titulo
      t.string    :apellido_paterno
      t.string    :apellido_materno
      t.string    :nombre
      t.string    :departamento
      t.string    :no_ife
      t.string    :email
      t.string    :curp
      t.string    :nivel_academico
      t.string    :tipo_asesor
      t.timestamps
    end
  end
end
