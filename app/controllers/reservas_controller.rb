class ReservasController < ApplicationController

def new
	@reserva = Reserva.new
end



def create
	@reserva = Reserva.new(params.require(:reserva).permit(:inicio,:fin))
	@reserva.user_id = current_user.id
	if @reserva.save
		redirect_to couches_path
	else
		redirect_to new_reserva_path, notice: "No se puede hacer la reserva"
	end
end

def show
	
end

end
