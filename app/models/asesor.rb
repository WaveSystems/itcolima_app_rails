class Asesor < ActiveRecord::Base
  has_one :proyecto
  has_many :alumnos
  NIVEL_ACADEMICO = %w[Maestria Licenciatura Doctorado]
  TIPO_ASESOR = %w[Interno Externo]
end
