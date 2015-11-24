class ReservasController < ApplicationController

def new
	@reserva = Reserva.new
end

def create
	@reserva = Reserva.create(params.require(:reserva).permit(:inicio,:fin,:user_id,:couch_id))
	if @reserva.errors.empty?
		redirect_to chouches_path
	else
		redirect_to new_reserva_path, notice: "No se puede hacer la reserva"
	end
end


end
