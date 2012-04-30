class AlumnoProyecto < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :proyecto
end
