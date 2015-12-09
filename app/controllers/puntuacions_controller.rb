class PuntuacionsController < ApplicationController
def index

	reservas_confirmadas = Reserva.all.where(confirmada:true)
	reservas_concluidas = reservas_confirmadas.where('? > fin', Date.today)
	#@reservas = reservas_concluidas.where('couch.user = ?', current_user.id) 
	resultado = []
	resul = []
	reservas_mis_couchs_ocupados = []
	reservas_donde_me_aloje = []
	c = reservas_concluidas
	c.each do |reserva|
      	reservas_mis_couchs_ocupados << reserva if reserva.couch.user == current_user
    	reservas_donde_me_aloje << reserva if reserva.user == current_user
    end
    reservas_mis_couchs_ocupados.each do |reserva|
		#if Puntuacion.where(from_user:current_user, user:reserva.user)
			resultado << reserva
		#end
	end
    @reservasu = resultado

    reservas_donde_me_aloje.each do |reserva|
    	#if Puntuacion.where(from_user:current_user, couch:reserva.couch)
    		resul << reserva
    	#end
    end
    @reservasc = resul

	@puntuacionu = Puntuacion.new
	@puntuacionc = Puntuacion.new
end
def new
	@puntuacion = Puntuacion.new
end
def create
	@puntuacionu = Puntuacion.create(params.require(:puntuacion).permit(:valor, :user_id, :from))
	@puntuacionc = Puntuacion.create(params.require(:puntuacion).permit(:valor, :couch_id, :from))	
	redirect_to puntuacions_path
end
def recibidas

	reservas_confirmadas = Reserva.all.where(confirmada:true)
	reservas_concluidas = reservas_confirmadas.where('? > fin', Date.today)
	#@reservas = reservas_concluidas.where('couch.user = ?', current_user.id) 
	resultado = []
	resul = []
	reservas_mis_couchs_ocupados = []
	reservas_donde_me_aloje = []
	c = reservas_concluidas
	c.each do |reserva|
      	reservas_mis_couchs_ocupados << reserva if reserva.couch.user == current_user
    	reservas_donde_me_aloje << reserva if reserva.user == current_user
    end
    reservas_mis_couchs_ocupados.each do |reserva|
		if !Puntuacion.where(from_user:reserva.user, user:current_user).empty?
			resultado << reserva
		end
	end
    @reservasu = resultado

    reservas_donde_me_aloje.each do |reserva|
    	if !Puntuacion.where(from_user:reserva.couch.user, user:current_user).empty?
    		resul << reserva
    	end
    end
    @reservasc = resul
end
end