class Asesor < ActiveRecord::Base
  belongs_to :proyecto
  has_many :alumnos
  NIVEL_ACADEMICO = %w[Maestria Licenciatura Doctorado]
  TIPO_ASESOR = %w[Interno Externo]
  attr_accessible :titulo, :apellido_paterno, :apellido_materno, :nombre, :departamento, :no_ife, :email, :curp, :nivel_academico, :proyecto_id 
end
