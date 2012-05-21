class AsesorsController < ApplicationController
  def index
    @asesors = Asesor.where("nombre LIKE ?", "%#{params[:search]}%")
  end
end
