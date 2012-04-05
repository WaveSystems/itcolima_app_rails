class Proyecto < ActiveRecord::Base
  belongs_to :asesor
  has_many :alumnos
  CATEGORIAS = %w[Producto Servicio Proceso]
  AREAS_DE_PARTICIPACION = %w[Agua Salud Medio\ ambiente Alimentos Agricultura Transporte Energia Comunicaciones]
end
