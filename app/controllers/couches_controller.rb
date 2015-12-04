class CouchesController < ApplicationController

def show
	@couch = Couch.find(params[:id])
end	

def edit
	@couch = Couch.find(params[:id])
end

def update
	@couch = Couch.find(params[:id])
	@couch.update(params.require(:couch).permit(:nombre, :descripcion, :lugar, :capacidad, :imagen, :couch_type_id))
	redirect_to couches_path
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


def indexreservas
	@couch = Couch.find(params[:couch_id])
end
def aceptar
    Reserva.find(params[:reserva_id]).confirmada==true
    redirect_to misreservas_path
end
def rechazar
    Reserva.find(params[:reserva_id]).destroy
    redirect_to misreservas_path, notice: "La reserva ha sido rechazada"
end
def cancelar
    Reserva.find(params[:reserva_id]).destroy
    redirect_to misreservas_path, notice: "La reserva ha sido cancelada"
end	
#	@couches = Couch.all.prioridades

#	if lugar != nil 
#		@couches = @couches.where("lugar ILIKE ?", "%#{lugar}%")
#	end
#	if capacidad != nil && capacidad != "" 
#		@couches = @couches.where( "capacidad >= ?", "#{capacidad}")
#	end
#	if puntuacion != nil && puntuacion != ""
#		@couches = @couches.where( "puntuacion >= ?", "#{puntuacion}")
#	end
#	if tipo != nil && tipo != ""
#		@couches = @couches.where( "couch_type_id = ?", "#{tipo}")
#	end
#	if (ida) && (vuelta)
#		@couches = @couches.where("")
#	end


#	Client.where("created_at >= :start_date AND created_at <= :end_date",
 # {start_date: params[:start_date], end_date: params[:end_date]}

#if (params[:lugar])
#	@couches = Couch.all.where( :lugar => params[:lugar])
#end
#if (!params[:lugar])
#	@couches = Couch.all 
#else
#	@couches = Couch.all
#end

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
