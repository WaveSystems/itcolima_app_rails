class Proyecto < ActiveRecord::Base
  belongs_to :asesor
  has_many :alumnos
  CATEGORIA = %w[Producto Servicio Proceso]
  AREA_DE_PARTICIPACION = %w[Agua Salud Medio\ ambiente Alimentos Agricultura Transporte Energia Comunicaciones]
end
