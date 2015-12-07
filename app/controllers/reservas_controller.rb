class ReservasController < ApplicationController
before_action :get_reserva, only: [:aceptar, :rechazar, :cancelar, :visto]

def get_reserva
    @reserva = Reserva.find(params[:id])
end

def new
	@reserva = Reserva.new
	@reserva.couch_id = params[:couch_id]
end


def create
	@reserva = Reserva.new(params.require(:reserva).permit(:inicio,:fin, :couch_id))
	@reserva.user_id = current_user.id
	
	if @reserva.save
		redirect_to couch_path(:id => @reserva.couch_id), notice: "Felicitaciones!!! La reserva se hizo con éxito!"
	else		
		render :new 
	end
end

def show
end

def aceptar
    @reserva.confirmada = true
    @reserva.visto = false
    @reserva.save
    redirect_to misreservas_path, notice: "La reserva ha sido confirmada"
end

def rechazar
    @reserva.rechazada = true
    @reserva.confirmada = true
    @reserva.visto = false
    @reserva.save
    redirect_to misreservas_path, notice: "La reserva ha sido rechazada"
end

def cancelar
    @reserva.cancelada = true
    @reserva.visto = false
    @reserva.save
    if @reserva.couch.user.id == current_user.id    
        redirect_to misreservas_path, notice: "La reserva ha sido cancelada"
    else
        redirect_to solicitudes_path, notice: "La reserva ha sido cancelada"
    end
end

def visto
	@reserva.visto = true
	@reserva.save
	if @reserva.cancelada || @reserva.rechazada
		@reserva.destroy
	end
	redirect_to couches_path
end

end
