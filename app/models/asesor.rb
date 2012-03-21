class Asesor < ActiveRecord::Base
  has_one :proyecto
  has_many :alumnos
end
