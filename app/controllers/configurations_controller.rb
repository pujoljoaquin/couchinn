class ConfigurationsController < ApplicationController

def index
end

def seleccionfechas
	
end

def usuariosregistrados
	@premium = false
	@inicio = Date.civil(params[:aux1]["comienzo(1i)"].to_i, params[:aux1]["comienzo(2i)"].to_i, params[:aux1]["comienzo(3i)"].to_i)
	@fin = Date.civil(params[:aux2]["fin(1i)"].to_i, params[:aux2]["fin(2i)"].to_i, params[:aux2]["fin(3i)"].to_i)
	if params[:commit] == "Ver dinero recaudado"
		@premium = true
	end	
end

end