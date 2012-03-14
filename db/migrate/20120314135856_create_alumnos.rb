class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :no_control
      t.string  :apellido_paterno
      t.string  :apellido_materno
      t.string  :nombre
      t.float   :promedio
      t.integer :matricula
      t.string  :email
      t.string  :no_ife
      t.string  :sexo
      t.text    :expectativa
      t.string  :carrera
      t.timestamps
    end
  end
end
