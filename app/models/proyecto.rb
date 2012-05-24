class Proyecto < ActiveRecord::Base
  has_many :alumno_proyectos
  has_many :asesor_proyectos
  has_many :alumnos, :through => :alumno_proyectos
  has_many :asesors, :through => :asesor_proyectos
  belongs_to :user

  validates_uniqueness_of :nombre
  validates_presence_of :categoria, :nombre, :area_participacion, :objetivo, :numero_de_autores, :numero_asesores
  attr_accessible :categoria, :nombre, :area_participacion, :objetivo, :innovacion, :resultados_esperados, :numero_de_autores, :asesor_id, :numero_asesores, :finished, :requerimentos

  default_scope order('id DESC')

  CATEGORIAS = %w[Producto Servicio Proceso]
  AREAS_DE_PARTICIPACION = %w[Expo\ feria Agua Salud Medio\ ambiente Alimentos Agricultura Transporte Energia Comunicaciones]

  def self.proyectos
    proyectos = Proyecto.all
    proyectos.collect {|proyecto| [proyecto.nombre, proyecto.id]}
  end

  # nombre del proyecto datos de los alumnos y nombre del asesor

  def alumnos_proyecto
    cadena = ""
    self.alumnos.each do |alumno|
      cadena += "#{alumno.no_control} #{alumno.apellido_paterno} #{alumno.apellido_materno} #{alumno.nombre} | "
    end
    cadena
  end

  def asesores_proyecto
    cadena = ""
    self.asesors.each do |asesor|
      cadena += "#{asesor.titulo} #{asesor.apellido_paterno} #{asesor.apellido_materno} #{asesor.nombre}, Departamento:  #{asesor.departamento} | "
    end
    cadena
  end
end
