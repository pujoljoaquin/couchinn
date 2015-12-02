class ConsultasController < ApplicationController
before_action :get_consulta, only: [:edit, :update]

def get_consulta
	@consulta = Consulta.find(params[:id])
end

def new
	@consulta = Consulta.new
	@consulta.couch_id = params[:couch_id]
	@consulta.user_id = params[:user_id]
end

def create
	@consulta = Consulta.new(params.require(:consulta).permit(:pregunta, :couch_id, :user_id))
	@consulta.fechaPregunta = DateTime.now
	@consulta.save
	redirect_to couch_path(@consulta.couch_id)
end

def edit
end

def update
	@consulta.update(params.require(:consulta).permit(:respuesta))
	@consulta.fechaRespuesta = DateTime.now
	@consulta.save
	redirect_to couch_path(@consulta.couch_id)
end

def index
end

end
