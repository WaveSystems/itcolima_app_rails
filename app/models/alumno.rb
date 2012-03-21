class Alumno < ActiveRecord::Base
  belongs_to :asesor
  belongs_to :proyecto
end
