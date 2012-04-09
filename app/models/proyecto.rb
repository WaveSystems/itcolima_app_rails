class Proyecto < ActiveRecord::Base
  belongs_to :asesor
  has_many :alumnos
  validates_presence_of :categoria, :nombre, :area_participacion, :objetivo, :innovacion, :resultados_esperados, :numero_de_autores, :numero_asesores
  attr_accessible :categoria, :nombre, :area_participacion, :objetivo, :innovacion, :resultados_esperados, :numero_de_autores, :asesor_id, :numero_asesores
  CATEGORIAS = %w[Producto Servicio Proceso]
  AREAS_DE_PARTICIPACION = %w[Agua Salud Medio\ ambiente Alimentos Agricultura Transporte Energia Comunicaciones]
end
