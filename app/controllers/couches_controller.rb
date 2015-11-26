class CouchesController < ApplicationController

def show
	@couch = Couch.find(params[:id])
end	

def index
		
	tipo = params[:couch_type_id]
	lugar = params[:lugar]
	capacidad = params[:capacidad]
	puntuacion = params[:puntuacion]
	check_in = params[:ida]
	check_out = params[:vuelta]

	@couches = Couch.free_couches(tipo, lugar, capacidad, puntuacion, check_in, check_out)
end

def new
	@couch = Couch.new
end 

def create
	
	@couch = Couch.new(params.require(:couch).permit(:nombre, :couch_type_id, :descripcion, :lugar, :capacidad, :imagen))
	@couch.user = current_user
	
	if @couch.save
		redirect_to couches_path
	else
		redirect_to new_couch_path, notice: "Hay campos vacios"
	end
end

def destroy
	couch = Couch.find(params[:id])
	couch.destroy
	redirect_to users_show_path
end
end