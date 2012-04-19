class Proyecto < ActiveRecord::Base
  has_many :asesors
  has_many :alumnos
  validates_presence_of :categoria, :nombre, :area_participacion, :objetivo, :innovacion, :resultados_esperados, :numero_de_autores, :numero_asesores
  attr_accessible :categoria, :nombre, :area_participacion, :objetivo, :innovacion, :resultados_esperados, :numero_de_autores, :asesor_id, :numero_asesores, :finished
  CATEGORIAS = %w[Producto Servicio Proceso]
  AREAS_DE_PARTICIPACION = %w[Agua Salud Medio\ ambiente Alimentos Agricultura Transporte Energia Comunicaciones]

  def self.proyectos
    proyectos = Proyecto.all
    proyectos.collect {|proyecto| [proyecto.nombre, proyecto.id]}
  end
end
