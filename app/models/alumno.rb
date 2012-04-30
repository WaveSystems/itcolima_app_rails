class Alumno < ActiveRecord::Base
  has_many :alumno_proyectos
  has_many :proyectos, :through => :alumno_proyectos

  attr_accessible :promedio, :matricula, :no_ife, :expectativa, :carrera, :proyecto_id, :finished, :email, :semestre, :no_control, :curp

  EXPECTATIVA = %w[Estudio\ de\ posgrado Incorporacion\ al\ mundo\ laboral Desarrollar\ su\ propia\ empresa]
  CARRERA = %w[Ingenieria\ en\ sistemas\ computacionales Ingenieria\ en\ mecatronica Ingenieria\ industrial Ingenieria\ bioquimica Ingenieria\ informatica Ingenieria\ ambiental Ingenieria\ en\ gestion\ empresarial Licenciatura\ en\ administracion Licenciatura\ en\ informatica Licenciatura\ en\ contabilidad Arquitectura]
  SEMESTRE = %w[1 2 3 4 5 6 7 8 9 10 11 12 13 14]
  SEXO = %w[Masculino Femenino]
end
