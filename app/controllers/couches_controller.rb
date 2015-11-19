class CouchesController < ApplicationController
def show
	@couch = Couch.find(params[:id])
end	
def index
	@couches = Couch.all.prioridades
	tipo = params[:couch_type_id]
	lugar = params[:lugar]
	capacidad = params[:capacidad]
	puntuacion = params[:puntuacion]
	if lugar
		@couches = @couches.where("lugar ILIKE ?", "%#{lugar}%")
	end
	if capacidad != ""  
		@couches = @couches.where( "capacidad >= ?", "#{capacidad}")
	end
	if puntuacion != ""
		@couches = @couches.where( "puntuacion >= ?", "#{puntuacion}")
	end
	if tipo != ""
		@couches = @couches.where( "couch_type_id = ?", "#{tipo}")
	end




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

end
