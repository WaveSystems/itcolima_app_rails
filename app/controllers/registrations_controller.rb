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
      redirect_to :registrations
    else
      flash[:alert]="Ups! Algo salio mal, intente nuevamente..."
      redirect_to :new_project
    end
  end
end
