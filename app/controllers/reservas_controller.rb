class ReservasController < ApplicationController

def new
	@reserva = Reserva.new
	@reserva.couch_id = params[:couch_id]
end


def create
	@reserva = Reserva.new(params.require(:reserva).permit(:inicio,:fin, :couch_id))
	@reserva.user_id = current_user.id
	
	if @reserva.save
		redirect_to couches_path
	else		
		render :new 
	end
end

def show
	
end

end
