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
      redirect_to new_asesor_path(params[:proyecto_id])
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
    if@alumno.update_attributes(params[:alumno].merge(:proyecto_id => params[:proyecto_id], :finished => true))
      flash[:notice]="Ingrese el siguiente alumno"
      redirect_to search_for_alumnos_path(params[:proyecto_id])
    else
      flash[:alert]="Ups! Algo salio mal, intente nuevamente..."
      redirect_to search_for_alumnos_path(params[:proyecto_id])
    end
  end

  def new_asesor
    @proyecto = Proyecto.find(params[:proyecto_id])
    unless @proyecto.numero_asesores == 0 || @proyecto.asesors.count == @proyecto.numero_asesores
      @asesor = Asesor.new
    else
      flash[:notice]="El proyecto ha sido guardado exitosamente"
      redirect_to :registrations
    end
  end
  
  def create_asesor
    @asesor = Asesor.new(params[:asesor].merge(:proyecto_id => params[:proyecto_id]))
    if @asesor.save
      flash[:notice]="El asesor ha sido creado exitosamente, Ingrese el siguiente asesor..."
      redirect_to new_asesor_path(params[:proyecto_id])
    else
      flash[:alert]="Ups! Algo salio mal, intente nuevamente..."
      redirect_to new_asesor_path(params[:proyecto_id])
    end
  end
end
