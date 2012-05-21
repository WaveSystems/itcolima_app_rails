class AsesorProyecto < ActiveRecord::Base
  belongs_to :asesor
  belongs_to :proyecto

  attr_accessible :asesor_id, :proyecto_id
end
