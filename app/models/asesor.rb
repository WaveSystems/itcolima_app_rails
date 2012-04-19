class Asesor < ActiveRecord::Base
  belongs_to :asesor
  has_many :alumnos
  NIVEL_ACADEMICO = %w[Maestria Licenciatura Doctorado]
  TIPO_ASESOR = %w[Interno Externo]
  attr_accessible :titulo, :apellido_paterno, :apellido_materno, :nombre, :departamento, :no_ife, :email, :curp, :nivel_academico, :asesor_id 

  def self.asesores
    asesores = Asesor.all
    asesores.collect {|asesor| ["#{asesor.nombre} #{asesor.apellido_paterno} #{asesor.apellido_materno}", asesor.id]}
  end
end
