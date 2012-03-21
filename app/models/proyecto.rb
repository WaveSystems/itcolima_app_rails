class Proyecto < ActiveRecord::Base
  belongs_to :asesor
  has_many :alumnos
end
