class RegistrationsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @proyectos = current_user.proyectos.page(params[:page]).per(7)
  end
  
  def new
    @proyecto = Proyecto.new
  end
  
  def create
    @proyecto = current_user.proyectos.build(params[:proyecto])
    if @proyecto.save
      flash[:notice]="El proyecto ha sido creado exitosamente"
      redirect_to search_for_alumnos_path(@proyecto.id)
    else
      flash[:alert]="Verifique que los campos requeridos."
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
  end

  def update_alumno
    @alumno = Alumno.find_by_no_control(params[:alumno][:no_control])
    @alumno_proyecto = AlumnoProyecto.new(:alumno_id => @alumno.id, :proyecto_id => params[:proyecto_id])
    if @alumno.update_attributes(params[:alumno]) and @alumno_proyecto.save
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
    @asesor = Asesor.new(params[:asesor])
    if @asesor.save
      @asesor_proyecto = AsesorProyecto.new(:asesor_id => @asesor.id, :proyecto_id => params[:proyecto_id])
      @asesor_proyecto.save
      flash[:notice]="El asesor ha sido creado exitosamente, Ingrese el siguiente asesor..."
      redirect_to new_asesor_path(params[:proyecto_id])
    else
      flash[:alert]="Ups! Algo salio mal, intente nuevamente..."
      redirect_to new_asesor_path(params[:proyecto_id])
    end
  end

  def add_asesor
    @asesor_proyecto = AsesorProyecto.new(:asesor_id => params[:asesor_id], :proyecto_id => params[:proyecto_id])
    if @asesor_proyecto.save
      flash[:notice]="El asesor ha sido agregado exitosamente, Ingrese el siguiente asesor..."
      redirect_to new_asesor_path(params[:proyecto_id])
    else
      flash[:alert]="Ups! Algo salio mal, intente nuevamente..."
      redirect_to new_asesor_path(params[:proyecto_id])
    end
  end

  def edit
    @proyecto = Proyecto.find(params[:id])
    redirect_to :registrations unless current_user.proyectos.include? @proyecto
  end

  def update
    @proyecto = Proyecto.find(params[:id])
    if @proyecto.update_attributes(params[:proyecto])
      flash[:notice] = "Cambios guardados exitosamente"
      unless @proyecto.numero_de_autores > @proyecto.alumnos.count || @proyecto.numero_asesores > @proyecto.asesors.count
        redirect_to :registrations
      else
        redirect_to search_for_alumnos_path(params[:id])
      end
    else
      flash[:alert] = "Algo salio mal, revise sus cambios e intente nuevamente..."
      redirect_to edit_project_path(params[:id])
    end
  end

  def edit_alumnos
    @alumnos = Proyecto.find(params[:id]).alumnos
  end

  def edit_a
    @alumno = Alumno.find(params[:id])
  end

  def update_a
    @alumno = Alumno.find(params[:id])
    if @alumno.update_attributes(params[:alumno])
      flash[:notice] = "Cambios guardados exitosamente"
      redirect_to :registrations
    else
      flash[:alert] = "Algo salio mal, revise sus cambios e intente nuevamente..."
      redirect_to edit_a_path(params[:id])
    end
  end

  def edit_asesores
    @asesores = Proyecto.find(params[:id]).asesors
  end
  
  def edit_asesor
    @asesor = Asesor.find(params[:id])
  end

  def update_asesor
    @asesor = Asesor.find(params[:id])
    if @asesor.update_attributes(params[:asesor])
      flash[:notice] = "Cambios guardados exitosamente"
      redirect_to :registrations
    else
      flash[:alert] = "Algo salio mal, revise sus cambios e intente nuevamente..."
      redirect_to edit_asesor_path(params[:id])
    end
  end
end
