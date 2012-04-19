class Asesor < ActiveRecord::Base
  belongs_to :proyecto
  NIVEL_ACADEMICO = %w[Maestria Licenciatura Doctorado]
  TIPO_ASESOR = %w[Interno Externo]
  attr_accessible :titulo, :apellido_paterno, :apellido_materno, :nombre, :departamento, :no_ife, :email, :curp, :nivel_academico

  def self.asesores
    asesores = Asesor.all
    asesores.collect {|asesor| ["#{asesor.nombre} #{asesor.apellido_paterno} #{asesor.apellido_materno}", asesor.id]}
  end
end
