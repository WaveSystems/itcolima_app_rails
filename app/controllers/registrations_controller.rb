class RegistrationsController < ApplicationController
  before_filter :authenticate_user!
  def index
  end
  
  def new
    @proyecto = Proyecto.new
  end
  
  def create
    @proyecto = Proyecto.new(params[:proyecto])
    if @proyecto.save
      flash[:notice]="El proyecto ha sido creado exitosamente"
      redirect_to search_for_alumnos_path(@proyecto.id)
    else
      flash[:alert]="Ups! Algo salio mal, intente nuevamente..."
      redirect_to :new_project
    end
  end

  def search_for_alumnos
    @proyecto = Proyecto.find(params[:proyecto_id])
    if @proyecto.numero_de_autores == @proyecto.alumnos.count
      flash[:notice]="Porfavor ingrese los datos de los asesores"
      redirect_to :registrations
    end
  end

  def edit_alumno
  end

  def update_alumno
  end
end
