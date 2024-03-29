class Asesor < ActiveRecord::Base
  has_many :asesor_proyectos
  has_many :proyectos, :through => :asesor_proyectos
  NIVEL_ACADEMICO = %w[Maestria Licenciatura Doctorado]
  TIPO_ASESOR = %w[Interno Externo]
  validates_presence_of :titulo, :apellido_paterno, :apellido_materno, :nombre, :departamento, :email,:nivel_academico, :tipo_asesor
  attr_accessible :titulo, :apellido_paterno, :apellido_materno, :nombre, :departamento, :no_ife, :email, :curp, :nivel_academico, :tipo_asesor
  
  def self.asesores
    asesores = Asesor.all
    asesores.collect {|asesor| ["#{asesor.nombre} #{asesor.apellido_paterno} #{asesor.apellido_materno}", asesor.id]}
  end
end
