class Asesor < ActiveRecord::Base
  belongs_to :proyecto
  has_many :alumnos
  NIVEL_ACADEMICO = %w[Maestria Licenciatura Doctorado]
  TIPO_ASESOR = %w[Interno Externo]
end
