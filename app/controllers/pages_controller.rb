class PagesController < ApplicationController
  def index
  end
  def create
    project = Projectmodel.new
    project.nombre = params[:name]
    project.estado = params[:state]
    project.descripcion = params[:description]
    project.fecha_inicial = params[:starts_on]
    project.fecha_final = params[:ends_on]
    project.save
  end
end
