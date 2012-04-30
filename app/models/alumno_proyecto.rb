class AlumnoProyecto < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :proyecto

  attr_accessible :alumno_id, :proyecto_id
end
