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
    @alumno = Alumno.find_by_no_control(params[:id])
    if @alumno.finished?
      redirect_to search_for_alumnos_path(params[:proyecto_id])
    end
  end

  def update_alumno
    @alumno = Alumno.find_by_no_control(params[:alumno][:no_control])
    @alumno.update_attributes(params[:alumno].merge(:proyecto_id => params[:proyecto_id], :finished => true))
    redirect_to search_for_alumnos_path(params[:proyecto_id])
  end
end
