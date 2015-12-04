class ReservasController < ApplicationController

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
    r = Reserva.find(params[:id])
    r.confirmada = true
    r.save
    redirect_to misreservas_path
end
def rechazar
    Reserva.find(params[:id]).destroy
    redirect_to misreservas_path, notice: "La reserva ha sido rechazada"
end
def cancelar
    Reserva.find(params[:id]).destroy
    redirect_to misreservas_path, notice: "La reserva ha sido cancelada"
end	


end
